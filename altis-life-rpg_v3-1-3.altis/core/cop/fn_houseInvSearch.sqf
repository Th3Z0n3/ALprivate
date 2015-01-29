#include <macro.h>
/*
*/
private["_vehicle","_vehicleInfo","_value"];
_vehicle = cursorTarget;
if(isNull _vehicle) exitWith {hint "Hier ist kein Haus."};
if(!(_vehicle isKindOf "House_F")) exitWith {};

_vehicleInfo = _vehicle getVariable ["Trunk",[]];
if(count _vehicleInfo == 0) exitWith {hint "Dieses Haus ist leer."};

_value = 0;
{
	_var = _x select 0;
	_val = _x select 1;
	
	_index = [_var,life_illegal_items] call fnc_index;
	if(_index != -1) then
	{
		_vIndex = [_var,__GETC__(sell_array)] call fnc_index;
		if(_vIndex != -1) then
		{
			_value = _value + (_val * ((__GETC__(sell_array) select _vIndex) select 1));
		};
	};
} foreach (_vehicleInfo select 0);

if(_value > 0) then
{
	[[0,format["Ein Haus wurde durchsucht und illegale Ware im Wert von $%1 beschlagnahmt.",[_value] call life_fnc_numberText]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	life_atmcash = life_atmcash + _value;
	_vehicle setVariable["Trunk",[[],0],true];
	[_vehicle] call life_fnc_houseInventory;
}
	else
{
	hint "Es befindet sich nichts illegales im Haus.";
};