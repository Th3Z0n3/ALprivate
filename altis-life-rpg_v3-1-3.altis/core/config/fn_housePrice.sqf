/*
	File: fn_housePrice.sqf
	Author: John "Paratus" VanderZwet
	
	Description:
	Returns the buyable house price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "Land_i_House_Small_01_V1_F": {14000000};
	case "Land_i_House_Small_01_V2_F": {14000000};
	case "Land_i_House_Small_01_V3_F": {14000000};
	case "Land_i_House_Small_02_V1_F": {14000000};
	case "Land_i_House_Small_02_V2_F": {14000000};
	case "Land_i_House_Small_02_V3_F": {14000000};
	case "Land_i_House_Small_03_V1_F": {14000000};
	case "Land_i_House_Big_01_V1_F": {26000000};
	case "Land_i_House_Big_01_V2_F": {26000000};
	case "Land_i_House_Big_01_V3_F": {26000000};
	case "Land_i_House_Big_02_V1_F": {26000000};
	case "Land_i_House_Big_02_V2_F": {26000000};
	case "Land_i_House_Big_02_V3_F": {26000000};
	case "Land_i_Garage_V1_F": {1200000};
	case "Land_i_Garage_V2_F": {1200000};
	//case "Land_i_Stone_Shed_V1_F": {1200000};
	//case "Land_i_Stone_HouseSmall_V1_F": {2400000};
	//case "Land_i_Stone_HouseSmall_V2_F": {2400000};
	//case "Land_i_Stone_HouseSmall_V3_F": {2400000};
	//case "Land_Slum_House01_F": {250000};
	//case "Land_Slum_House02_F": {250000};
	//case "Land_i_Barracks_V1_F": {12000000};
	//case "Land_i_Barracks_V2_F": {12000000};
	//case "Land_u_Barracks_V2_F": {12000000};
	default {-1};
};

