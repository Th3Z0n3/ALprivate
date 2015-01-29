/*
	File: fn_robBankAction.sqf
	
	Description:
	Who cares, getting scrapped.
*/
private["_funds"];
bank_query = player;
bank_robber = bank_robber + [player];
publicVariableServer "bank_query";
waitUntil {!isNil {bank_query_funds}};
_funds = bank_query_funds;
if(_funds < 0) exitWith
{
	hint "Die Bundesbank wurde schon ausgeraubt. Du kannst jetzt nicht hinein!";
};
hint "Vorbereitung zum öffnen des Safes...";
sleep 1;
bank_query_funds = nil;

[[_funds],"bank_robbery",true,false] spawn life_fnc_MP;