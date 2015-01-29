/*
	File: fn_createGang.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Functionality meant for creating gangs.
*/
private["_value","_len","_group"];
_value = ctrlText 2522;
_len = [_value] call KRON_StrLen;

if(_len > 25) exitWith {hint "Der Gangname darf maximal 25 Zeichen lang sein."};
if(life_cash < 1000) exitWith {hint "Es kostet $1,000 eine Gang zu gründen."};
if(isNil {life_gang_list}) exitWith {hint "Nicht möglich."};
if(([_value,life_gang_list] call fnc_index) != -1) exitWith {hint "Es gibt bereits eine Gang mit diesem Namen."};

_group = createGroup civilian;

//Set Array
life_gang_list set[count life_gang_list,[_value,_group,false,str(player),getPlayerUID player]];
publicVariable "life_gang_list";
[player] joinSilent _group;
player setRank "COLONEL";
life_my_gang = _group;
if(!isNull life_my_gang) then
{
	life_cash = life_cash - 1000;
	closeDialog 0;
	createDialog "Life_My_Gang_Diag";
	publicVariable "life_gang_list";
};