/*
	File: fn_gatherHopfen.sqf
	Author: Th3Z0n3
	Description: Hopfen
*/
private["_sum"];
_sum = ["hopfen",2,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_gather = true;
	titleText["Pflücke Hopfen...","PLAIN"];
	titleFadeOut 4.5;
	sleep 6;
	if(([true,"hopfen",2] call life_fnc_handleInv)) then
	{
		titleText["Du hast Hopfen gepflückt.","PLAIN"];
	};
};

life_action_gather = false;