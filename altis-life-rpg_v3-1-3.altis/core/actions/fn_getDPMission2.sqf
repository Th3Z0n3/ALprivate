/*
	File: fn_getDPMission2.sqf
	Author: Bryan "Tonic" Boardwine
	Edit: coopy.tv
*/
private["_dp2","_target"];
if ((vehicle player) != player) exitWith { hint "Du musst erst aus dem Fahrzeug aussteigen."};
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(str(_target) in life_dp_points2) then
{
	private["_point"];
	_point = life_dp_points2 - [(str(_target))];
	_dp2 = _point call BIS_fnc_selectRandom;
}
	else
{
	_dp2 = life_dp_points2 call BIS_fnc_selectRandom;
};

life_dp_start = _target;

life_delivery_in_progress = true;
life_dp_point = call compile format["%1",_dp2];

_dp2 = [_dp2,"_"," "] call KRON_Replace;
life_cur_task = player createSimpleTask [format["Delivery_%1",life_dp_point]];
life_cur_task setSimpleTaskDescription [format["Bring diesen Schrott zum %1.",toUpper _dp2],"Delivery Job",""];
life_cur_task setTaskState "Assigned";
player setCurrentTask life_cur_task;

["DeliveryAssigned",[format["Bring diesen Schrott zum %1.",toUpper _dp2]]] call bis_fnc_showNotification;

[] spawn
{
	waitUntil {!life_delivery_in_progress OR !alive player};
	if(!alive player) then
	{
		life_cur_task setTaskState "Failed";
		player removeSimpleTask life_cur_task;
		["DeliveryFailed",["Du hast versagt, du bist gestorben."]] call BIS_fnc_showNotification;
		life_delivery_in_progress = false;
		life_dp_point = nil;
	};
};

//Heli/Car Check
while {true} do {
	if ((vehicle player isKindOf "Air") OR (vehicle player isKindOf "B_Quadbike_01_F") OR (vehicle player isKindOf "C_Hatchback_01_F") OR (vehicle player isKindOf "C_Hatchback_01_sport_F") OR (vehicle player isKindOf "C_Offroad_01_F") OR (vehicle player isKindOf "C_SUV_01_F") OR (vehicle player isKindOf "B_G_Offroad_01_F")) exitWith {
		life_cur_task setTaskState "Failed";
		player removeSimpleTask life_cur_task;
		["DeliveryFailed",["Du brauchst einen LKW für diese Mission."]] call BIS_fnc_showNotification;
		life_delivery_in_progress = false;
		life_dp_point = nil;
	};
	sleep 3;
};