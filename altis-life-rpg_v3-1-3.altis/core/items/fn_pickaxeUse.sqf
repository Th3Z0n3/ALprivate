/*
	File: fn_pickaxeUse.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Main functionality for pickaxe in mining.
*/
closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName","_val"];
switch (true) do
{
	case (player distance (getMarkerPos "lead_1") < 30): {_mine = "copperore"; _val = 2;};
	case (player distance (getMarkerPos "iron_1") < 30): {_mine = "ironore"; _val = 2;};
	case (player distance (getMarkerPos "salt_1") < 120) : {_mine = "salt"; _val = 3;};
	case (player distance (getMarkerPos "sand_1") < 75) : {_mine = "sand"; _val = 5;};
	case (player distance (getMarkerPos "diamond_1") < 50): {_mine = "diamond"; _val = 2;};
	case (player distance (getMarkerPos "oil_1") < 50) : {_mine = "oilu"; _val = 2;};
	case (player distance (getMarkerPos "oil_2") < 50) : {_mine = "oilu"; _val = 2;};
	case (player distance (getMarkerPos "rock_1") < 50): {_mine = "rock"; _val = 2;};
	case (player distance (getMarkerPos "kohle_1") < 50): {_mine = "kohler"; _val = 3;};
	case (player distance (getMarkerPos "silver_1") < 50): {_mine = "silver"; _val = 2;};	
	case (player distance (getMarkerPos "gold_1") < 50): {_mine = "gold"; _val = 2;};
	default {_mine = "";};
};
//Mine check
if(_mine == "") exitWith {hint "Du bist in keiner Mine!"};
if(life_inv_jackhammer > 0) exitWith {hint "Du darfst nur mit einem Abbaugerät arbeiten!";};
if(vehicle player != player) exitWith {hint "Steig zum abbauen aus. Fauler Sack!";};

_diff = [_mine,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint "Dein Inventar ist voll."};

delay_pickaxe = true;

life_action_inUse = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_mine,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format["Du hast %2 %1 abgebaut.",_itemName,_diff],"PLAIN"];
};
sleep 2.5;
delay_pickaxe = false;
life_action_inUse = false;