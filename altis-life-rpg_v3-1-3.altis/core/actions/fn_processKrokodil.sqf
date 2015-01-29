/*
	@Author: synced-gaming.de david, sven ;)
*/
private ["_amount1", "_amount2", "_amount3","_amount4"];
_amount1 = life_inv_schlinge;
_amount2 = life_inv_krokodil;
_amount3 = "";
_amount4 = "";

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
	_amount4 = _amount1;
};
if (life_inv_schlinge <= 0) exitWith { hint "Du hast kein Schlinge"; };
if (life_inv_krokodil <= 0) exitWith { hint "Du hast kein Krokodil"; };
if(vehicle player != player) exitWith {hint "Du kannst nicht im Fahrzeug verarbeiten. Steig aus!"};
if(!license_civ_jagdlizenz) exitWith {hint "Du besitzt keine Jagdlizenz!";};

if(license_civ_jagdlizenz) then
{
	if(([false,"schlinge",_amount2] call life_fnc_handleInv) && ([false,"krokodil",_amount1] call life_fnc_handleInv)) then 
	{
	titleText["So, festgeknotet! Das häuten dauert eine Weile...", "PLAIN"];
	titleFadeOut 12;
	sleep 12;
	if (([true,"krokofleisch",_amount3] call life_fnc_handleInv) && ([true,"krokoleder",_amount4] call life_fnc_handleInv)) then 
	{
	titleText [format ["Du hast %1 Krokodilfleisch erhalten.", _amount3], "PLAIN"];
	sleep 2;
	titleText [format ["Du hast %1 Krokodilleder erhalten.", _amount4], "PLAIN"];
	};
	};
};