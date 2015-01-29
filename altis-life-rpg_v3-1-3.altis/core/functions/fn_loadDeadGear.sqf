/*
    File: fn_copLoadGear.sqf
    Author: Bryan "Tonic" Boardwine
    
    Description:
    Loads saved cop gear, this is limited for a reason and that's balance.
*/
private["_itemArray", "_allowedItems" ,"_uniform","_vest","_backpack","_goggles","_headgear","_items","_prim","_seco","_uItems","_bItems","_vItems","_pItems","_hItems","_uMags","_bMags","_vMags","_handle"];
_itemArray = cop_gear;

_allowedItems =
[
	"hgun_P07_snds_F",
	"arifle_sdar_F",
	"SMG_02_F",
	"optic_Holosight_smg",
    "acc_flashlight",
	"arifle_MX_F",
	"arifle_MXC_F",
	"arifle_MX_GL_F",
	"muzzle_snds_L",
	"optic_Holosight",
	"optic_Hamr",
	"hgun_Pistol_heavy_01_F",
    "arifle_MX_Black_F",
	"arifle_MXC_Black_F",
	"arifle_MX_GL_Black_F",
	"arifle_MX_SW_Black_F",
	"arifle_MXM_Black_F",
	"srifle_EBR_F",
	"muzzle_snds_L",
	"muzzle_snds_H",
	"muzzle_snds_acp",
	"optic_MRD",
	"optic_NVS",
	"optic_LRPS",
	"acc_pointer_IR"
];
if(isNil "_itemArray") exitWith {[] call life_fnc_copDefault;}; //Slot data doesn't exist
if(count _itemArray == 0) exitWith {[] call life_fnc_copDefault;}; //Slot data doesn't exist

waitUntil {!(isNull (findDisplay 46))};

//Strip the unit down
RemoveAllWeapons player;
{player removeMagazine _x;} foreach (magazines player);
removeUniform player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadGear player;
{
    player unassignItem _x;
    player removeItem _x;
} foreach (assignedItems player);

_uniform = [_itemArray,0,"",[""]] call BIS_fnc_param;
_vest = [_itemArray,1,"",[""]] call BIS_fnc_param;
_backpack = [_itemArray,2,"",[""]] call BIS_fnc_param;
_goggles = [_itemArray,3,"",[""]] call BIS_fnc_param;
_headgear = [_itemArray,4,"",[""]] call BIS_fnc_param;
_items = [_itemArray,5,[],[[]]] call BIS_fnc_param;
_prim = [_itemArray,6,"",[""]] call BIS_fnc_param;
_seco = [_itemArray,7,"",[""]] call BIS_fnc_param;
_uItems = [_itemArray,8,[],[[]]] call BIS_fnc_param;
_uMags = [_itemArray,9,[],[[]]] call BIS_fnc_param;
_bItems = [_itemArray,10,[],[[]]] call BIS_fnc_param;
_bMags = [_itemArray,11,[],[[]]] call BIS_fnc_param;
_vItems = [_itemArray,12,[],[[]]] call BIS_fnc_param;
_vMags = [_itemArray,13,[],[[]]] call BIS_fnc_param;
_pItems = [_itemArray,14,[],[[]]] call BIS_fnc_param;
_hItems = [_itemArray,15,[],[[]]] call BIS_fnc_param;

if(_prim != "") then {_handle = [_prim,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
if(_seco != "") then {_handle = [_seco,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
if(_goggles != "") then {_handle = [_goggles,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
if(_headgear != "") then {_handle = [_headgear,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
if(_uniform != "") then {_handle = [_uniform,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
if(_vest != "") then {_handle = [_vest,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
if(_backpack != "") then {_handle = [_backpack,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};};
{_handle = [_x,true,false,false,false] spawn life_fnc_handleItem; waitUntil {scriptDone _handle};} foreach _items;
{

if(!(_x in _allowedItems)) then {_x = ""};

    if (_x != "") then {
        player addPrimaryWeaponItem _x;
    };
} foreach (_pItems);
{

if(!(_x in _allowedItems)) then {_x = ""};

    if (_x != "") then {
        player addHandgunItem _x;
    };
} foreach (_hItems);

{player addItemToUniform _x;} foreach (_uItems);
{(uniformContainer player) addItemCargoGlobal [_x,1];} foreach (_uMags);
{player addItemToVest _x;} foreach (_vItems);
{(vestContainer player) addItemCargoGlobal [_x,1];} foreach (_vMags);
{player addItemToBackpack _x;} foreach (_bItems);
{(backpackContainer player) addItemCargoGlobal [_x,1];} foreach (_bMags);