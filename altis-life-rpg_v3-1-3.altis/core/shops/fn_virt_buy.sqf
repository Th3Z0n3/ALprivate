/*
	File: fn_virt_buy.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Buy a virtual item from the store.
*/
private["_type","_price","_amount","_diff","_name","_marketprice"];
if ((vehicle player) != player) exitWith { hint "Du musst erst aus dem Fahrzeug aussteigen." };
if((lbCurSel 2401) == -1) exitWith {hint "Du musst erst einen Gegenstand auswählen."};
_type = lbData[2401,(lbCurSel 2401)];
_price = lbValue[2401,(lbCurSel 2401)];
_amount = ctrlText 2404;

_marketprice = [_type] call life_fnc_marketGetBuyPrice;
if(_marketprice != -1) then
{
	_price = _marketprice;
};

if(!([_amount] call fnc_isnumber)) exitWith {hint "Du hast keine Zahl eingegebn.";};
_diff = [_type,parseNumber(_amount),life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
_amount = parseNumber(_amount);
if(_diff <= 0) exitWith {hint "Die hast nicht genug Platz!"};
_amount = _diff;

if((_price * _amount) > life_cash) exitWith {hint "Du hast nicht genug Geld!"};

_name = [([_type,0] call life_fnc_varHandle)] call life_fnc_varToStr;

if(([true,_type,_amount] call life_fnc_handleInv)) then
{
	hint format["Du hast %1 %2 für $%3 gekauft.",_amount,_name,[(_price * _amount)] call life_fnc_numberText];
	life_cash = life_cash - (_price * _amount);
	if(_marketprice != -1) then 
		{ 
			[_type, _amount] spawn
			{
				sleep 120;
				[_this select 0,_this select 1] call life_fnc_marketBuy;
			};			
		};
	[] call life_fnc_virt_update;
};
[] call life_fnc_virt_update;