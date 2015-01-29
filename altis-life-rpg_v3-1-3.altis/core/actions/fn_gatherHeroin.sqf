/*
	File: fn_gatherHeroin.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gathers heroin?
*/
private["_sum"];
_sum = ["heroinu",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_gather = true;
	titleText["Hmmm...Mohn...","PLAIN"];
	titleFadeOut 5;
	sleep 5;
	if(([true,"heroinu",1] call life_fnc_handleInv)) then
	{
		titleText["Du hast Mohn gesammelt.","PLAIN"];
	};
};

life_action_gather = false;