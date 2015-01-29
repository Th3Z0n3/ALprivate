/*
	File: fn_bankTransfer.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Figure it out again.
*/
private["_val","_unit","_tax"];
_val = parseNumber(ctrlText 2702);
_unit = call compile format["%1",(lbData[2703,(lbCurSel 2703)])];
if(isNull _unit) exitWith {};
if((lbCurSel 2703) == -1) exitWith {hint "Du musst jemanden zur Transaktion auswählen."};
if(isNil "_unit") exitWith {hint "Dieser Spieler scheint nicht zu existieren?"};
if(_val > 999999) exitWith {hint "Du kannst nicht mehr als $999,999 transferieren.";};
if(_val < 0) exitwith {};
if(!([str(_val)] call life_fnc_isnumeric)) exitWith {hint "Das ist keine Zahl."};
if(_val > life_atmcash) exitWith {hint "Du hast nicht soviel auf deinem Bankkonto!"};
_tax = [_val] call life_fnc_taxRate;
if((_val + _tax) > life_atmcash) exitWith {hint format["Du hast nicht genug Geld auf deinem Konto, um $%1 zu transferieren musst du eine Gebühr von $%2 zahlen.",_val,_tax]};

life_atmcash = life_atmcash - (_val + _tax);

bank_addfunds = _tax;
publicVariableServer "bank_addfunds";
[[_val,name player],"clientWireTransfer",_unit,false] spawn life_fnc_MP;
[] call life_fnc_atmMenu;
hint format["Du hast %2 $%1 geschickt.\nEs wurde eine Begühr von $%3 fällig.",[_val] call life_fnc_numberText,name _unit,[_tax] call life_fnc_numberText];
[] call life_fnc_sessionQuickSync; //Silent Sync