/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{

	//Allgemeine Items
	case "apple": {1};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {5};
	case "mullet": {4};
	case "catshark": {5};
	case "fishing": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "spikeStrip": {15};
	case "jackhammer": {6};

	//Legale Stoffe
	case "oilu": {4};
	case "oilp": {2};
	case "copperore": {4};
	case "copper_r": {2};
	case "ironore": {4};
	case "iron_r": {3};
	case "sand": {3};
	case "glass": {1};
	case "salt": {3};
	case "salt_r": {1};
	case "diamond": {4};
	case "diamondc": {2};
	case "rock": {4};
	case "cement": {2};
	case "gold": {8};
	case "goldr": {5};
	case "kohler": {2};
	case "silver": {5};
	case "silverr": {3};
	case "stahl": {4};
	case "hopfen": {3};
	case "malz": {3};
	case "bier": {2};


	//Illegale Stoffe

	case "heroinu": {6};
	case "heroinp": {4};
	case "cannabis": {4};
	case "marijuana": {3};
	case "turtle": {5};
	case "turtlesoup": {2};
	case "cocaine": {6};
	case "cocainep": {4};
	case "methu": {6};
	case "methp": {4};
	case "shroomsu": {4};
	case "shroomsp": {2};
	case "krokodil": {8};
	case "schlinge": {1};
	case "krokofleisch": {4};
	case "krokoleder": {4};




	default {1};
};
