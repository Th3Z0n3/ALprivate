/*
	File: fn_escInterupt.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Monitors when the ESC menu is pulled up and blocks off
	certain controls when conditions meet.
*/
private["_abortButton","_respawnButton","_fieldManual","_escSync","_canUseControls"];
disableSerialization;

_escSync = {
	private["_abortButton","_thread","_syncManager"];
	disableSerialization;
	
	/*
	if(count (primaryWeaponItems player) > 0) then
	{
		49 cutText[format["Bitte wechsel auf deine Handwaffe oder verstaue die Langwaffe im Rucksack bevor du das Spiel verlässt."],"PLAIN DOWN"];
		waitUntil{isNull (findDisplay 49)};
		sleep 1;
		49 cutText["","PLAIN DOWN"];
		if(isNull (findDisplay 49)) exitWith {};
	};
	*/
	
	//Check der Duping verhindern soll
	if (animationState player == "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon" or animationState player == "Incapacitated") then {
		49 cutText[format["Du kannst das Spiel jetzt nicht verlassen! Du hast dich ergeben oder bist bewusstlos!"],"PLAIN DOWN"];
		waitUntil{isNull (findDisplay 49)};
		sleep 3;
		49 cutText["","PLAIN DOWN"];
		if(isNull (findDisplay 49)) exitWith {};
	} else {
	_syncManager = {
		for [{_x=1},{_x<=6},{_x=_x+1}] do
		{
			49 cutText[format["Du kannst in %1 Sekunden das Spiel verlassen. Hast du gespeichert?", 6 - _x],"PLAIN DOWN"]; //Zeit reduziert, damit nicht mehr geduped werden kann
			sleep 1;
			49 cutText["","PLAIN DOWN"];
			if(isNull (findDisplay 49)) exitWith {};
		};
	};
	
	_abortButton = (findDisplay 49) displayCtrl 104;
	[] call life_fnc_sessionQuickSync;
	
	if(_this) then {
		_thread = [] spawn _syncManager;
		waitUntil{scriptDone _thread OR isNull (findDisplay 49)};
		_abortButton ctrlEnable true;
	};
	};
};

_canUseControls = {
	if(playerSide == west) exitWith {true};
	if((player getVariable["restrained",FALSE]) OR (player getVariable["Escorting",FALSE]) OR (player getVariable["transporting",FALSE]) OR (life_is_arrested) OR (life_istazed)) then {false} else {true};
};
	
while {true} do
{
	waitUntil{!isNull (findDisplay 49)};
	_abortButton = (findDisplay 49) displayCtrl 104;
	_respawnButton = (findDisplay 49) displayCtrl 1010;
	_fieldManual = (findDisplay 49) displayCtrl 122;
	
	//Block off our buttons first.
	_abortButton ctrlEnable false;
	_respawnButton ctrlEnable false;
	_fieldManual ctrlEnable false; //Never re-enable, blocks an old script executor.
	_fieldManual ctrlShow false; //Zeige nichtmal das Feldhandbuch
	
	_usebleCtrl = call _canUseControls;
	_usebleCtrl spawn _escSync;
	if(_usebleCtrl) then {
		_respawnButton ctrlEnable true; //Enable the button.
	};
	waitUntil{isNull (findDisplay 49)};
};