/*
	File: fn_robReserve.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for robbing the federal reserve.
*/
private["_vault","_funds","_timer","_toFar"];
_vault = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_funds = [_this,1,-1,[0]] call BIS_fnc_param;
_toFar = false;

if (count playableUnits < 10) then
{
	_funds = 250000;
} else {
		_funds = count playableUnits * 25000;
	};

if(isNull _vault OR _funds == -1) exitWith {}; //Bad data
if(player distance _vault > 20) exitWith {[[_vault,-1],"TON_fnc_robberyState",false,false] spawn life_fnc_MP; hint "Du musst in der Nähe des Safes bleiben! (20m)"};

if(_funds < 50000) exitWith{[[_vault,-1],"TON_fnc_robberyState",false,false] spawn life_fnc_MP; hint "Es war nicht genug Beute in der Bank...";};

_timer = time + (15 * 60); //Default timer is 15 minutes to rob.
titleText["Knacke den Safe...","PLAIN"];
[[2,"$$$ DIE BUNDESBANK WIRD AUSGERAUBT!!! $$$"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
[_vault,"bankalarm"] call life_fnc_globalSound;

while {true} do
{
	//Timer display (TO BE REPLACED WITH A NICE GUI LAYER)
	_countDown = if(round(_timer - time) > 60) then {format["%1 minute(s)",round(round(_timer - time) / 60)]} else {format["%1 second(s)",round(_timer - time)]};
	hintSilent format["Du musst in der Nähe bleiben! (15m)\n\nVerbleibende Zeit:\n %1\n\nDistanz: %2m",_countDown,round(player distance _vault)];

	if(player distance _vault > 15) exitWith {_toFar = true;};
	if((round(_timer - time)) < 1) exitWith {};
	if(!alive player) exitWith {};
	if(life_istazed) exitWith {};
};

switch(true) do
{
	case (_toFar):
	{
		hint "Du hast dich zu weit von der Bank entfernt und der Raub schlug fehl!";
		[[_vault,0],"TON_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
	
	case (!alive player):
	{
		hint "Da du gestorben bist, schlug der Bankraub fehl - schade.";
		[[_vault,0],"TON_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
	
	case (life_istazed):
	{
		hint "Ein Tazer der Polizei hat dich vom weiteren Geldeinsammeln abgehalten!";
		[[_vault,0],"TON_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
	
	case ((round(_timer - time)) < 1):
	{
		hint format["Du hast erfolgreich $%1 gestohlen\n\nDamit die Polizei dich nicht so einfach verfolgen kann, wurde deine Bankkarte für 8 Minuten deaktiviert.",[_funds] call life_fnc_numberText];
		[] spawn
		{
			life_use_atm = false;
			sleep 480;
			life_use_atm = true;
		};
		life_cash = life_cash + _funds;
		[[_vault,1,_funds],"TON_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
};