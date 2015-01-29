/*
	@Author: synced-gaming.de david, sven ;)
*/
private ["_amount1", "_amount2", "_amount3"];
_amount1 = life_inv_hopfen;
_amount2 = life_inv_malz;
_amount3 = "";	// Menge des herzustellendes Guts

if (_amount1 < _amount2) then 
{
	_amount3 = (_amount2 - (_amount2 - _amount1));
	_amount2 = (_amount2 - (_amount2 - _amount1));
};
if (_amount2 < _amount1) then 
{
	_amount3 = (_amount1 - (_amount1 - _amount2));
	_amount1 = (_amount1 - (_amount1 - _amount2));
};
if (_amount1 == _amount2) then 
{
	_amount3 = _amount1;
};
if (life_inv_hopfen <= 0) exitWith { hint "Dir fehlt Hopfen"; };
if (life_inv_malz <= 0) exitWith { hint "Dir fehlt Malz"; };
if(vehicle player != player) exitWith {hint "Du kannst nicht im Fahrzeug verarbeiten. Steig aus!"};

if(license_civ_bier) then
{
	if(([false,"malz",_amount2] call life_fnc_handleInv) && ([false,"hopfen",_amount1] call life_fnc_handleInv)) then 
	{
		titleText["Braue Bier...", "PLAIN"];
		titleFadeOut 4.5;
		sleep 6;
		
		if (([true, "bier", _amount3] call life_fnc_handleInv)) then 
		{
			titleText [format ["Du hast %1 Bier gebraut.", _amount3], "PLAIN"];
		};
	};
};