/*
	File: fn_gatherMushrooms.sqf
	Author: Th3Z0n3
	Description: Magic Mushrooms
*/
private["_sum"];
_sum = ["shroomsu",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_gather = true;
	titleText["Pflücke Pilze...","PLAIN"];
	titleFadeOut 3;
	sleep 3;
	if(([true,"shroomsu",1] call life_fnc_handleInv)) then
	{
		titleText["Du hast Pilze gepflückt.","PLAIN"];
	};
};

life_action_gather = false;