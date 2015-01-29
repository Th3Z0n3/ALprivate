/*
	File: fn_gatherKroko.sqf
	Author: Th3Z0n3
	Description: Krokodile
*/
private["_sum"];
_sum = ["krokodil",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_gather = true;
	titleText["Fange Krokodil...","PLAIN"];
	titleFadeOut 10;
	sleep 10;
	if(([true,"krokodil",1] call life_fnc_handleInv)) then
	{
		titleText["Du hast ein Krokodil gefangen.","PLAIN"];
	};
};

life_action_gather = false;