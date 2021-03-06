/*
File: fn_vehicleShopBuy.sqf
Author: Bryan "Tonic" Boardwine

Description:
Does something with vehicle purchasing.
*/
private["_mode","_spawnPoints","_className","_basePrice","_colorIndex","_spawnPoint","_vehicle"];
_mode = _this select 0;
if((lbCurSel 2302) == -1) exitWith {hint "Du hast kein Fahrzeug ausgewählt!"};
_className = lbData[2302,(lbCurSel 2302)];
_basePrice = lbValue[2302,(lbCurSel 2302)]; if(_mode) then {_basePrice = round(_basePrice * 4.6)};
_colorIndex = lbValue[2304,(lbCurSel 2304)];

//Series of checks (YAY!)
if(_basePrice < 0) exitWith {}; //Bad price entry
if(life_cash < _basePrice) exitWith {hint format["Du hast nicht genug Geld dieses fahrzeug zu kaufen.\n\nFehlender Betrag: $%1",[_basePrice - life_cash] call life_fnc_numberText];};
if(!([_className] call life_fnc_vehShopLicenses) && _className != "B_MRAP_01_hmg_F") exitWith {hint "You do not have the required license!"};

_spawnPoints = life_veh_shop select 1;
_spawnPoint = "";

//Check if there is multiple spawn points and find a suitable spawnpoint.
if(typeName _spawnPoints == typeName []) then {
//Find an available spawn point.
{if(count(nearestObjects[(getMarkerPos _x),["Car","Ship","Air"],5]) == 0) exitWith {_spawnPoint = _x};} foreach _spawnPoints;
} else {
if(count(nearestObjects[(getMarkerPos _spawnPoints),["Car","Ship","Air"],5]) == 0) exitWith {_spawnPoint = _spawnPoints};
};

if(_spawnPoint == "") exitWith {hint "Ein anderes Fahrzeug versperrt den Spawn.";};
life_cash = life_cash - _basePrice;
hint format["Du hast einen %1 für $%2 gekauft.",getText(configFile >> "CfgVehicles" >> _className >> "displayName"),[_basePrice] call life_fnc_numberText];

//Spawn the vehicle and prep it.
_vehicle = createVehicle [_className, (getMarkerPos _spawnPoint), [], 0, "NONE"];
_vehicle allowDamage false; //Temp disable damage handling..
_vehicle setVectorUp (surfaceNormal (getMarkerPos _spawnPoint));
_vehicle setDir (markerDir _spawnPoint);
_vehicle setPos (getMarkerPos _spawnPoint);
_vehicle allowDamage true; //Re-enable damage handling.
[_vehicle] call life_fnc_clearVehicleAmmo;
_vehicle setVariable["trunk_in_use",false,true];
_vehicle setVariable["vehicle_info_owners",[[getPlayerUID player,name player]],true];
_vehicle disableTIEquipment true; //No Thermals.. They're cheap but addictive.
[[_vehicle,_colorIndex],"life_fnc_colorVehicle",true,false] spawn life_fnc_MP; //Colorize dat bitch!

_vehicle lock 2;

//Side Specific actions.
switch(playerSide) do {
case west: {
[_vehicle,"cop_offroad",true] call life_fnc_vehicleAnimate;
};

case civilian: {
if((life_veh_shop select 2) == "civ" && {_className == "B_Heli_Light_01_F"}) then {
[_vehicle,"civ_littlebird",true] call life_fnc_vehicleAnimate;
};
};
};

life_vehicles set[count life_vehicles,_vehicle]; //Add err to the chain.
if(_mode) then {

[[(getPlayerUID player),playerSide,_vehicle,_colorIndex],"TON_fnc_vehicleCreate",false,false] spawn life_fnc_MP;

};

[] call life_fnc_sessionQuickSync; //Sync silently because it's obviously silently..
closeDialog 0; //Exit the menu.
true;

/*if(!(_className in ["B_G_Offroad_01_armed_F","B_MRAP_01_hmg_F"])) then {
[[(getPlayerUID player),playerSide,_vehicle,_colorIndex],"TON_fnc_vehicleCreate",false,false] spawn life_fnc_MP;
};
*/