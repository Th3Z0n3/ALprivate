/*
	File: fn_ticketGive.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gives a ticket to the targeted player.
*/
private["_val"];
if(isNil {life_ticket_unit}) exitWith {hint "Die Person existiert nicht."};
if(isNull life_ticket_unit) exitWith {hint "Die Person existiert nicht."};
_val = ctrlText 2652;
if(!([_val] call fnc_isnumber)) exitWith {hint "Das ist keine Zahl."};
if((parseNumber _val) > 100000) exitWith {hint "Tickets dürfen nicht mehr als $100,000 betragen."};
[[0,format["%1 hat ein Strafzettel in Höhe von $%2 an %3 ausgestellt",name player,[(parseNumber _val)] call life_fnc_numberText,name life_ticket_unit]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
[[player,(parseNumber _val)],"life_fnc_ticketPrompt",life_ticket_unit,false] spawn life_fnc_MP;
closeDialog 0;