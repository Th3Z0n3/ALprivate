#include <macro.h>
/*
    File: fn_initCop.sqf
    Author: Bryan "Tonic" Boardwine
	Edit by: Taiwendo
    
    Description:
    Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

//Public Slots entfernt

	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};

player setVariable["coplevel", __GETC__(life_coplevel), true]; // Ranks

[] call life_fnc_spawnMenu;
//[] call life_fnc_equipGear;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
sleep 3;
[player, uniform player] call life_fnc_copUniform;