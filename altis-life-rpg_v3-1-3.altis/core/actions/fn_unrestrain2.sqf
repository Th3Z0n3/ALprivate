/*
	File: fn_unrestrain2.sqf
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit OR !(_unit getVariable["restrained",FALSE])) exitWith {}; //Error check?

_unit setVariable["restrained",FALSE,TRUE];
_unit setVariable["Escorting",FALSE,TRUE];
_unit setVariable["transporting",FALSE,TRUE];
detach _unit;
player say3D "cuff";

if(side _unit == west) then
{
[[0,format["%2 hat die Fesseln von %1 gelöst.",name _unit, name player]],"life_fnc_broadcast",west,FALSE] call life_fnc_MP;
}
	else
{
[[0,format["%2 hat die Fesseln von %1 gelöst.",name _unit, name player]],"life_fnc_broadcast",west,FALSE] call life_fnc_MP;
};