/*
	File: fn_houseContainers.sqf
	Author: John "Paratus" VanderZwet
	
	Description:
	Returns the max number of containers by house type.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "Land_i_House_Small_01_V1_F": {1};
	case "Land_i_House_Small_01_V2_F": {1};
	case "Land_i_House_Small_01_V3_F": {1};
	case "Land_i_House_Small_02_V1_F": {1};
	case "Land_i_House_Small_02_V2_F": {1};
	case "Land_i_House_Small_02_V3_F": {1};
	case "Land_i_House_Small_03_V1_F": {1};
	case "Land_i_House_Big_01_V1_F": {2};
	case "Land_i_House_Big_01_V2_F": {2};
	case "Land_i_House_Big_01_V3_F": {2};
	case "Land_i_House_Big_02_V1_F": {2};
	case "Land_i_House_Big_02_V2_F": {2};
	case "Land_i_House_Big_02_V3_F": {2};
	//case "Land_i_Barracks_V1_F": {2};
	//case "Land_i_Barracks_V2_F": {2};
	//case "Land_u_Barracks_V2_F": {2};
	//case "Land_i_Stone_Shed_V1_F": {0};
	//case "Land_i_Stone_HouseSmall_V1_F": {1};
	//case "Land_i_Stone_HouseSmall_V2_F": {1};
	//case "Land_i_Stone_HouseSmall_V3_F": {1};
	//case "Land_Slum_House01_F": {0};
	//case "Land_Slum_House02_F": {0};
	default {0};
};