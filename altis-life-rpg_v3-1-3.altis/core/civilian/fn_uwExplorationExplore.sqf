private ["_distance","_pay","_txt"];

_distance = player distance life_explorer_wreck;
_pay = round(_distance * (24 + random 15));

waitUntil {player distance life_explorer_wreck <= 15 || !alive player};

// Check if player is still alive.
if (!alive player) exitWith {
	["TaskFailed", ["Unterwasser Archaeologie", "Du hast es vermasselt. Du bist tot..."]] call BIS_fnc_showNotification;
	life_explorer_task setTaskState "Failed";
	player removeSimpleTask life_explorer_task;
	deleteVehicle life_explorer_wreck;
};

// Remove task.
life_explorer_task setTaskState "Succeeded";
player removeSimpleTask life_explorer_task;
["TaskAssigned", ["Unterwasser Archaeologie", "Du hast es gefunden!"]] call bis_fnc_showNotification;

// Create new task.
[] spawn  {
	sleep 2;
	life_explorer_task = player createSimpleTask ["uw_exploration"];
	life_explorer_task setSimpleTaskDescription ["Geh zurueck zu deinem Auftragsgeber und berichte ihm was du gesehen hast.", "Unterwasser Archaeologie",""];
	life_explorer_task setTaskState "Assigned";
	player setCurrentTask life_explorer_task;
	["TaskAssigned", ["Unterwasser Archaeologie", "Geh zurueck zu deinem Auftragsgeber!"]] call bis_fnc_showNotification;
};

// Wait until player reaches ai.
waitUntil { player distance life_explorer_ai <= 4 };
life_explorer_task setTaskState "Succeeded";
player removeSimpleTask life_explorer_task;
deleteVehicle life_explorer_wreck;

_txt = parseText format ["Klasse, du hast uns einen grossen Gefallen getan, hier ist dein Lohn: <t color='#99C101'>$%1</t>", _pay];
"Unterwasser Archäologie" hintC [_txt];

life_cash = life_cash + _pay;