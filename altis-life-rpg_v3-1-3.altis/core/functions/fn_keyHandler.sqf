/*
	File: fn_keyHandler.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main key handler for event 'keyDown'
*/
private ["_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys"];
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_speed = speed cursorTarget;
_handled = false;

_interactionKey = if(count (actionKeys "User10") == 0) then {219} else {(actionKeys "User10") select 0};
_mapKey = actionKeys "ShowMap" select 0;
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D

if(life_action_inUse) exitWith {
	if(!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
	_handled;
};

if(player getVariable ["restrained", false]) exitWith
{
	hintSilent "Du bist gefesselt!";

	_handled = false;
	_handled;
};

switch (_code) do
{
	//Space key for Jumping
	case 47:
	{
		if(animationState player != "AovrPercMrunSrasWrflDf" && {isTouchingGround player} && {stance player == "STAND"} && {speed player > 3}) then {
			[[player],"life_fnc_jumpFnc",nil,FALSE] call life_fnc_MP;
			_handled = true;
		};
	};
	
	//EMP Konsole - K
	case 37:
	{
		if (!_shift && !_alt && !_ctrlKey && (playerSide == west) && (vehicle player != player && (typeOf vehicle player) in ["I_Heli_light_03_unarmed_F"])) then
		{
			[] call life_fnc_openEmpMenu; [_this] call life_fnc_isEmpOperator;
		};
	};
	
	//Map Key
	case _mapKey:
	{
		switch (playerSide) do 
		{
			case west: {if(!visibleMap) then {[] spawn life_fnc_copMarkers;}};
			case independent: {if(!visibleMap) then {[] spawn life_fnc_medicMarkers;}};
		};
	};
	
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	case _interactionKey:
	{
		if(!life_action_inUse) then {
			[] spawn 
			{
				private["_handle"];
				_handle = [] spawn life_fnc_actionKeyHandler;
				waitUntil {scriptDone _handle};
				life_action_inUse = false;
			};
		};
	};
	
	//Restraining (Shift + R)
	case 19:
	{
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [civilian,independent]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
			[] call life_fnc_restrainAction;
		};
	};
	
	//Knock out, this is experimental and yeah...
	case 34:
	{
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget && alive cursorTarget && cursorTarget distance player < 4 && speed cursorTarget < 1) then
		{
			if((animationState cursorTarget) != "Incapacitated" && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !life_knockout && !(player getVariable["restrained",false]) && !life_istazed) then
			{
				[cursorTarget] spawn life_fnc_knockoutAction;
			};
		};
	};

	//T Key (Trunk)
	case 20:
	{
		if(!_alt && !_ctrlKey) then
		{
			if(vehicle player != player && alive vehicle player) then
			{
				if((vehicle player) in life_vehicles) then
				{
					[vehicle player] call life_fnc_openInventory;
				};
			}
				else
			{
				if((cursorTarget isKindOf "Car" OR cursorTarget isKindOf "Air" OR cursorTarget isKindOf "Ship") && player distance cursorTarget < 7 && vehicle player == player && alive cursorTarget) then
				{
					if(cursorTarget in life_vehicles) then
					{
						[cursorTarget] call life_fnc_openInventory;
					};
				};
			};
		};
	};
	
	//L Key?
	case 38: 
	{
		//If cop run checks for turning lights on.
		if(_shift && playerSide == west) then {
			if(vehicle player != player && (typeOf vehicle player) in [
			"C_Offroad_01_F",
			"B_MRAP_01_F",
			"C_SUV_01_F",
			"C_Hatchback_01_sport_F",
			"B_Heli_Light_01_F",
			"B_Heli_Transport_01_F",
			"I_Heli_light_03_unarmed_F",
			"I_MRAP_03_hmg_F",
			"I_MRAP_03_F",
			"B_APC_Wheeled_01_cannon_F",
			"B_MRAP_01_hmg_F"
			]) then {
				if(!isNil {vehicle player getVariable "lights"}) then {
					[vehicle player] call life_fnc_sirenLights;
					_handled = true;
				};
			};
		};
		
		if(!_alt && !_ctrlKey) then { [] call life_fnc_radar; };
	};
	
	//Y Player Menu
	case 21:
	{
		if(!_alt && !_ctrlKey && !dialog) then
		{
			[] call life_fnc_p_openMenu;
		};
	};
	
	//V Key
	case 47:
	{
		if(playerSide != west && (player getVariable "restrained") OR (player getVariable "transporting")) then {_handled = true;};
	};
	
	//F Key
	case 33:
    {    if(_shift) then
            {
                if(playerSide == west && vehicle player != player && !life_siren2_active && ((driver vehicle player) == player)) then
                {
                    [] spawn
                    {
                        life_siren2_active = true;
                        sleep 1.2;
                        life_siren2_active = false;
                    };
                    _veh = vehicle player;
                    if(isNil {_veh getVariable "siren2"}) then {_veh setVariable["siren2",false,true];};
                    if((_veh getVariable "siren2")) then
                    {
                        titleText ["Sirene2 AUS","PLAIN"];
                        _veh setVariable["siren2",false,true];
                    }
                        else
                    {
                        titleText ["Sirene2 AN","PLAIN"];
                        _veh setVariable["siren2",true,true];
                        [[_veh],"life_fnc_copSiren2",nil,true] spawn life_fnc_MP;
                    };
                };
            };

        if (!_shift) then
        {
            if(playerSide == west && vehicle player != player && !life_siren_active && ((driver vehicle player) == player)) then
            {
                [] spawn
                {
                    life_siren_active = true;
                    sleep 4.7;
                    life_siren_active = false;
                };
                _veh = vehicle player;
                if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
                if((_veh getVariable "siren")) then
                {
                    titleText ["Sirene AUS","PLAIN"];
                    _veh setVariable["siren",false,true];
                }
                    else
                {
                    titleText ["Sirene AN","PLAIN"];
                    _veh setVariable["siren",true,true];
                    [[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
                };
            };                                            
        };
    };
	
	//Q Key
	case 16:
	{
		if((!life_action_inUse) && (vehicle player == player) && (!delay_pickaxe)) then
		{
			{
				_str = [_x] call life_fnc_varToStr;
				_val = missionNameSpace getVariable _x;
				if(_val > 0 ) then
				{
					if( _str == "Spitzhacke" || _str == "pickaxe" ) then
					{
						[] spawn life_fnc_pickAxeUse;
					};
					if( _str == "Presslufthammer" || _str == "jackhammer" ) then
					{
						[] spawn life_fnc_JackhammerUse;
					};
				};
			} foreach life_inv_items;
		};
	};
	
	// O, police gate opener
	case 24:
	{
		if (!_shift && !_alt && !_ctrlKey && (playerSide == west) && (vehicle player != player)) then {
			[] call life_fnc_copOpener;
		};
		
		// Shift + O, Use the new ATM Model
		if (_shift && !_alt && !_ctrlKey && (playerSide == west)) then {
			[] call life_fnc_atmMenu;
		};
	};
	
	// H: holster // surrender
	case 35: {
		if (_shift && !_alt && !_ctrlKey) then {
			if ((time - life_holster_time) > 4) then {
				life_holster_time = time;
				[] spawn life_fnc_holsterHandgun;
			};
		};
		if (!_shift && !_alt && _ctrlKey) then {
			if (vehicle player == player && !(player getVariable ["restrained", false])) then {
				if (player getVariable ["surrender", false]) then {
					player setVariable ["surrender", false, true];
				} else {
					[] spawn life_fnc_surrender;
				};
			};
			_handled = true;
		};
	};
	
	//U Key
	case 22:
	{
		if(!_alt && !_ctrlKey) then
		{
			if(vehicle player == player) then
			{
				_veh = cursorTarget;
			}
				else
			{
				_veh = vehicle player;
			};

			_locked = locked _veh;

			if(_veh in life_vehicles && player distance _veh < 7) then
			{
				if(_locked == 2) then
				{
					if(local _veh) then
					{
						_veh lock 0;
					}
						else
					{
						[[_veh,0], "life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						// Garagenbug, dirty Fix
						[_veh] spawn {
							private["_time","_vehicle"];
							_vehicle = _this select 0;
							_time = time;
							waitUntil{sleep 0.1; (locked _vehicle) == 0 || (time - _time) > 2};
							if((locked _vehicle) == 2) then { player moveInDriver _vehicle; sleep 1; (vehicle player) lock 0; hint "Garagenbug, unlock!"; };
						};
					};
					systemChat "Du hast das Fahrzeug aufgeschlossen.";
					[[_veh,0], "life_fnc_lockSounds",nil,false] spawn life_fnc_MP;
				}
					else
				{
					if(local _veh) then
					{
						_veh lock 2;
					}
						else
					{
						[[_veh,2], "life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
					};
					systemChat "Du hast das Fahrzeug abgeschlossen.";
					[[_veh,2], "life_fnc_lockSounds",nil,false] spawn life_fnc_MP;
				};
			};
		};
	};
	
	//Ä und Shift+Ä
	case 40:
    {    if(_shift) then
            {
                if(playerSide == west && vehicle player != player && !life_sirenWaffen && ((driver vehicle player) == player)) then
                {
                    [] spawn
                    {
                        life_sirenWaffen = true;
                        sleep 6.1;
                        life_sirenWaffen = false;
                    };
                    _veh = vehicle player;
                    if(isNil {_veh getVariable "sirenWaffen"}) then {_veh setVariable["sirenWaffen",false,true];};
                    if((_veh getVariable "sirenWaffen")) then
                    {
                        titleText ["WaffeRunter AUS","PLAIN"];
                        _veh setVariable["sirenWaffen",false,true];
                    }
                        else
                    {
                        titleText ["WaffeRunter AN","PLAIN"];
                        _veh setVariable["sirenWaffen",true,true];
                        [[_veh],"life_fnc_copSirenWaffen",nil,true] spawn life_fnc_MP;
                    };
                };
            };

        if (!_shift) then
        {
            if(playerSide == west && vehicle player != player && !life_sirenFahrzeug && ((driver vehicle player) == player)) then
            {
                [] spawn
                {
                    life_sirenFahrzeug = true;
                    sleep 6.1;
                    life_sirenFahrzeug = false;
                };
                _veh = vehicle player;
                if(isNil {_veh getVariable "sirenFahrzeug"}) then {_veh setVariable["sirenFahrzeug",false,true];};
                if((_veh getVariable "sirenFahrzeug")) then
                {
                    titleText ["AutoStoppen AUS","PLAIN"];
                    _veh setVariable["sirenFahrzeug",false,true];
                }
                    else
                {
                    titleText ["AutoStoppen AN","PLAIN"];
                    _veh setVariable["sirenFahrzeug",true,true];
                    [[_veh],"life_fnc_copSirenFahrzeug",nil,true] spawn life_fnc_MP;
                };
            };                                            
        };
    };
};

_handled;