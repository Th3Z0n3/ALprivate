/*
	@File: fn_processStahl.sqf
	@Author: Cyborg11
	
	Description:
	Produce steel (3 coal - 1 iron)
*/
private ["_amount1", "_amount2", "_amount3", "_temp", "_bool"];
_amount1 = life_inv_kohler;
_amount2 = life_inv_ironr;
_amount3 = "";	// Menge des herzustellendes Guts
_temp = "";
_bool = true;

if (_amount1 >= 3 && _amount2 >= 1) then
{
	_temp = (_amount1 / 3);

	while (_bool == true)
	{
		if (_amount2 >= _amount2 * _temp)
		{
			_amount3 = _temp;
			_bool = false;
		}
		else 
		{
			_temp = _temp - 1;
		};
	};
};

if (life_inv_kohler <= 0) exitWith { hint "Dir fehlt Kohle"; };
if (life_inv_ironr <= 0) exitWith { hint "Dir fehlt Eisen"; };
if(vehicle player != player) exitWith {hint "Du kannst nicht im Fahrzeug verarbeiten. Steig aus!"};

if(license_civ_stahl) then
{
	if(([false,"iron_r",_amount2 * _temp] call life_fnc_handleInv) && ([false,"kohler",_amount1] call life_fnc_handleInv)) then 
	{
		titleText["Stelle Stahl her...", "PLAIN"];
		titleFadeOut 4.5;
		sleep 6;
		
		if (([true, "stahl", _amount3] call life_fnc_handleInv)) then 
		{
			titleText [format ["Du hast %1 Stahl hergestellt.", _amount3], "PLAIN"];
		};
	};
};