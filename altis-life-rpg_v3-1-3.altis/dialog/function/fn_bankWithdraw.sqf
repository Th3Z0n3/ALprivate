/*
	COPY PASTE TIME
*/
private["_val"];
_val = parseNumber(ctrlText 2702);
if(_val > 999999) exitWith {hint "Du kannst nicht mehr als $999,999 abheben.";};
if(_val < 0) exitwith {};
if(!([str(_val)] call life_fnc_isnumeric)) exitWith {hint "Das ist keine Zahl."};
if(_val > life_atmcash) exitWith {hint "Du hast nicht genug Geld!"};
if(_val < 100 && life_atmcash > 20000000) exitWith {hint "Du kannst nicht weniger als 100$ abheben."}; //Temp fix for something.

life_cash = life_cash + _val;
life_atmcash = life_atmcash - _val;
hint format ["Du hast %1$ abgehoben.",[_val] call life_fnc_numberText];
[] call life_fnc_atmMenu;
[] call life_fnc_sessionQuickSync; //Silent Sync