enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

//Rank Tags
if (!isDedicated) then
{
	X_Client = true;
};

enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.3";


[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

//Fixed Weapon Dropping
onPlayerDisconnected { [_id, _name, _uid] call compile preProcessFileLineNumbers "core\functions\fn_onPlayerDisconnect.sqf" };

if(!StartProgress) then
{
	[8,true,true,12] execFSM "core\fsm\timeModule.fsm";
};

StartProgress = true;

//Gas Scripts
[] execVM "scripts\gasscript.sqf";

//Cargo Load
//[] execVM "IgiLoad\IgiLoadInit.sqf";

//Camera
null = [[Monitor1,Monitor2],["marketFeed","KavHqFeed"]] execVM "LFC\feedInit.sqf";

//Sitzen
MAC_fnc_switchMove = {
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;

    _object switchMove _anim;
};

//Disable Enviroment
//waitUntil {time > 0};
//enableEnvironment false;

//Markt
if(isDedicated && isNil("life_market_prices")) then
{
	[] call life_fnc_marketconfiguration;
	diag_log "Market prices generated!";

	"life_market_prices" addPublicVariableEventHandler
	{
		diag_log format["Market prices updated! %1", _this select 1];
	};
};

/*
#include "core\functions\fn_randomObjectSpawn.sqf"



//_pos1 = getPosATL player;
_pos1 = getMarkerPos "selekano";
_pos2 = getMarkerPos "feres";
_pos3 = getMarkerPos "panagia";
//_pos2 = getPosATL testlogic;
 //  [[_pos1,_pos2],_myObjectsArray,_myObjectCount,_myMaxRange,_canSpawnOnStreet(true/false)] call fnc_randomObjectSpawn;
_objectsluggage = ["Land_LuggageHeap_01_F","Land_LuggageHeap_02_F","Land_LuggageHeap_03_F","Land_LuggageHeap_04_F","Land_LuggageHeap_05_F"];
_objectsgarbage = ["Land_Garbage_line_F","Land_Garbage_square3_F","Land_GarbageBags_F","Land_GarbagePallet_F","Land_GarbageWashingMachine_F","Land_JunkPile_F","Land_Tyre_F"];

[[_pos1],_objectsluggage,100,300,false] call fnc_randomObjectSpawn;
[[_pos1],_objectsgarbage,200,300,true] call fnc_randomObjectSpawn;

[[_pos2],_objectsluggage,100,300,false] call fnc_randomObjectSpawn;
[[_pos2],_objectsgarbage,200,300,true] call fnc_randomObjectSpawn;

[[_pos3],_objectsluggage,100,300,false] call fnc_randomObjectSpawn;
[[_pos3],_objectsgarbage,200,300,true] call fnc_randomObjectSpawn;
*/