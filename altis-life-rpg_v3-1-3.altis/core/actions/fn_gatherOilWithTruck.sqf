/*
	Author: Bryan "Tonic" Boardwine
	File: fn_gatherOilWithTruck.sqf
	
	Description:
	Gathers oilu?
*/
private["_sum"];
_sum = ["oilu",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(!license_civ_oildrill) exitWith {hint "Du besitzt keine Ölbohrlizenz!"};

//if(_sum > 0 && (typeOf (vehicle player) == "O_Truck_03_device_F")) then
if(_sum > 0 && (vehicle player isKindOf "C_Van_01_fuel_F") OR (vehicle player isKindOf "I_Truck_02_fuel_F") OR (vehicle player isKindOf "O_Truck_03_fuel_F") OR (vehicle player isKindOf "B_Truck_01_fuel_F")) then
{
	life_action_gather = true;
	titleText["Bohre nach Öl...","PLAIN"];
	titleFadeOut 6;
	sleep 6;
	disableSerialization;

	_ctrl = "oilu";
	_num = 5;
	titleText["Schalte Bohrer ein...","PLAIN"]; sleep 6;
	_totalWeight = [vehicle player] call life_fnc_vehicleWeight;
	titleText["Bohrung läuft...","PLAIN"]; sleep 6;
	_itemWeight = ([_ctrl] call life_fnc_itemWeight) * _num;
	_veh_data = vehicle player getVariable ["Trunk",[[],0]];
	titleText["Befülle Truck...","PLAIN"]; sleep 6;
	_inv = _veh_data select 0;

	if(((_totalWeight select 1) + _itemWeight) > (_totalWeight select 0)) exitWith {hint "LKW ist voll."};

	_index = [_ctrl,_inv] call fnc_index;
	if(_index == -1) then
	{
		_inv set[count _inv,[_ctrl,_num]];
	}
		else
	{
		_val = _inv select _index select 1;
		_inv set[_index,[_ctrl,_val + _num]];
	};
	
	vehicle player setVariable["Trunk",[_inv,(_veh_data select 1) + _itemWeight],true];
	titleText["LKW wurde befüllt.","PLAIN"];
};

life_action_gather = false;