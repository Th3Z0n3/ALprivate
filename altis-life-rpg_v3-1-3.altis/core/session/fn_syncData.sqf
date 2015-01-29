/*
	Copyright © 2013 Bryan "Tonic" Boardwine, All rights reserved
	See http://armafiles.info/life/list.txt for servers that are permitted to use this code.
	File: fn_syncData.sqf
	Author: Bryan "Tonic" Boardwine"
	
	Description:
	Used for player manual sync to the server.
*/
#include <macro.h>
_fnc_scriptName = "Player Synchronization";
private["_exit"];
if(isNil "life_session_time") then {life_session_time = false;};
if(life_session_time) exitWith {hint "Du kannst deine Daten nur alle 5 Minuten manuell speichern.";};

switch (typeName life_fnc_MP_packet) do
{
	case "ARRAY":
	{
		if(count life_fnc_MP_packet == 0) exitWith
		{
			_exit = true;
		};
	};
	
	default {_exit = true;};
};

if(!isNil "_exit") exitWith {hint "Because of some cheater corrupting the BIS MP Framework they have stopped you from enjoying our mission.\n\nYou can try this again in a minute if you feel it is a mistake.";};

[] call life_fnc_sessionUpdate;
hint "Synchronisiere Spielerdaten.\nBitte warte mindestens 20 Sekunden bevor du den Server verlässt.";
[] spawn
{
	life_session_time = true;
	sleep (5 * 60);
	life_session_time = false;
};
	