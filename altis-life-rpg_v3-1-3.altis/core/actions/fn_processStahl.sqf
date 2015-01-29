/*
	@Author: synced-gaming.de david, sven ;)
*/
private ["_amount1", "_amount2", "_amount3"];
_amount1 = life_inv_kohler;
_amount2 = life_inv_ironr;
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
if (life_inv_kohler <= 0) exitWith { hint "Dir fehlt Kohle"; };
if (life_inv_ironr <= 0) exitWith { hint "Dir fehlen Eisenbarren"; };
if(vehicle player != player) exitWith {hint "Du kannst nicht im Fahrzeug verarbeiten. Steig aus!"};

if(license_civ_stahl) then
{
	if(([false,"iron_r",_amount2] call life_fnc_handleInv) && ([false,"kohler",_amount1] call life_fnc_handleInv)) then 
	{
		titleText["Stelle Stahl her...", "PLAIN"];
		titleFadeOut 5;
		sleep 6;
		
		if (([true, "stahl", _amount3] call life_fnc_handleInv)) then 
		{
			titleText [format ["Du hast %1 Stahl hergestellt.", _amount3], "PLAIN"];
		};
	};
};