/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "tied")) exitWith {};

if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
//Broadcast!
player say3D "cuff";

_unit setVariable["restrained",true,true];
[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
if(side _unit == west) then
{
[[0,format["[Cop] %1 wurde von %2 gefesselt.", name _unit, name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
}
	else
{
[[0,format["[Civ] %1 wurde von %2 gefesselt.", name _unit, name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
}; 