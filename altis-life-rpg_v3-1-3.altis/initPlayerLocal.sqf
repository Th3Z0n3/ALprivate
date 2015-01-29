/*
	File: initPlayerLocal.sqf
	
	Description:
	Starts the initialization of the player.
*/
if(!hasInterface) exitWith {}; //This is a headless client, he doesn't need to do anything but keep being headless..
[] execVM "core\init.sqf";

if(!isNil "god_1" && {player == god_1}) exitWith {
	[] execVM "core\initZeus.sqf";
};

//Execute JIP code.
if((_this select 1)) then {
	[] execVM "core\jip.sqf";
};