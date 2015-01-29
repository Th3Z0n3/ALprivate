/*
	File: fn_gatherMalz.sqf
	Author: Th3Z0n3
	Description: Malz
*/
private["_sum"];
_sum = ["malz",2,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_gather = true;
	titleText["Sammle Malz...","PLAIN"];
	titleFadeOut 4.5;
	sleep 6;
	if(([true,"malz",2] call life_fnc_handleInv)) then
	{
		titleText["Du hast Malz gesammelt.","PLAIN"];
	};
};

life_action_gather = false;