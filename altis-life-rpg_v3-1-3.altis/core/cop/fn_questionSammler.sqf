/*
	File: fn_questionSammler.sqf
	Author: Bryan "Tonic" Boardwine
	Modified by: Th3Z0n3
	Description:
	Questions the collector and sets the sellers wanted.
*/
private["_sellers","_names"];
_sellers = (_this select 0) getVariable["sellers",[]];
if(count _sellers == 0) exitWith {hint "Hier gab es keine illegalen Aktivitäten."}; //No data.
life_action_inUse = true;
_names = "";
{
	if(_x select 2 > 150000) then
	{
		_val = round((_x select 2) / 16);
	};
	[[_x select 0,_x select 1,"503",_val],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	_names = _names + format["%1<br/>",_x select 1];
} foreach _sellers;

hint parseText format["Folgende Personen haben hier etwas verkauft.<br/><br/>%1",_names];
(_this select 0) setVariable["sellers",[],true];
life_action_inUse = false;