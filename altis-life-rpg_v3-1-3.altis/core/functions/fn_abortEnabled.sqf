/*
	File: fn_abortEnabled.sqf
	Author: John "Paratus" VanderZwet
	
	Description:
	Enables or disables abort and respawn buttons based on restrain status
*/

private["_display","_btnRespawn","_btnAbort"];
disableSerialization;

while {true} do
{
	if (life_abort_enabled) then
	{
		waitUntil {
			_display = findDisplay 49;
			!isNull _display;
		};
		_btnRespawn = _display displayCtrl 1010;
		_btnAbort = _display displayCtrl 104;

		if ((player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")) then
		{
			_btnRespawn ctrlEnable false;
			_btnAbort ctrlEnable false;
			_btnRespawn ctrlSetText "You are restrained!";
			_btnAbort ctrlSetText "You are restrained!";
		}
		else
		{
			_btnRespawn ctrlEnable true;
			_btnAbort ctrlEnable true;
			_btnRespawn ctrlSetText "Respawn";
			_btnAbort ctrlSetText "Abort";
		};
		
		life_abort_enabled = false;
	};
};