private ["_wreck","_randomLocation","_wreckVeh","_txt","_pos"];

if (!isNull life_explorer_wreck) exitWith { hint format ["Ich habe dir doch schon eine Aufgabe gegeben, es sollte ungefaehr hier sein: %1.", mapGridPosition life_explorer_wreck]; };

// Define wrecks.
life_explorer_wrecks = [
	["Land_UWreck_FishingBoat_F", "Fischerboot"],
	["Land_UWreck_MV22_F", "Flugzeug"],
	["Land_Wreck_Traw2_F", "Schiff"],
	["Land_Wreck_Traw_F", "Schiff"]
];

// different wreck locations
life_explorer_logics = [wreck_logic_1,wreck_logic_2,wreck_logic_3,wreck_logic_4,wreck_logic_5,wreck_logic_6];

// Create wreck.
_wreck = life_explorer_wrecks select (round(random((count life_explorer_wrecks) - 1)));
_randomLocation = getPos (life_explorer_logics select (round(random((count life_explorer_logics) - 1))));
_wreckVeh = (_wreck select 0) createVehicle [0,0,0];
life_explorer_wreck = _wreckVeh;
life_explorer_wreck setDir (random 360);

// Set position of wreck.
_pos = [((_randomLocation select 0) + (random 1000 - random 1000)), ((_randomLocation select 1) + (random 1000 - random 1000))];
life_explorer_wreck setPosASL [_pos select 0, _pos select 1, getTerrainHeightASL _pos];

hintC format ["Uns wurde erzaehlt, dass ein untergegangenes %1 sich ungefaehr bei %2 befindet. Du musst es finden, danach komm zurueck zu mir.", _wreck select 1, mapGridPosition life_explorer_wreck];
_txt = format ["Das %1 ist ungefaehr bei %2. Ich muss es finden...", _wreck select 1, mapGridPosition life_explorer_wreck];

// Create task.
life_explorer_task = player createSimpleTask ["uw_exploration"];
life_explorer_task setSimpleTaskDescription [_txt, "Unterwasser Archaeologie", ""];
life_explorer_task setTaskState "Assigned";
player setCurrentTask life_explorer_task;

sleep 1;

["TaskAssigned", ["Unterwasser Archaeologie", format["Suche das untergegangene %1.", _wreck select 1]]] call bis_fnc_showNotification;

[] spawn life_fnc_uwExplorationExplore;

sleep 1;

[] spawn
{
	waitUntil {!life_explorer_dead OR !alive player};
	if(!alive player) then
	{
		["TaskFailed", ["Unterwasser Archaeologie", "Fehlschlag. Du bist gestorben!"]] call BIS_fnc_showNotification;
		life_explorer_task setTaskState "Failed";
		player removeSimpleTask life_explorer_task;
		deleteVehicle life_explorer_wreck;
	};
};

//Heli/Auto Check
while {true} do {
	if ((vehicle player isKindOf "Air") OR (vehicle player isKindOf "Car")) exitWith
	{
		["TaskFailed", ["Unterwasser Archaeologie", "Fehlschlag. Du brauchst ein Boot!"]] call BIS_fnc_showNotification;
		life_explorer_task setTaskState "Failed";
		player removeSimpleTask life_explorer_task;
		deleteVehicle life_explorer_wreck;
	};
	//sleep 3;
};