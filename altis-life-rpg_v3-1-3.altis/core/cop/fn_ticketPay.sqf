/*
	File: fn_ticketPay.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Pays the ticket.
*/
if(isnil {life_ticket_val} OR isNil {life_ticket_cop}) exitWith {};
if(life_cash < life_ticket_val) exitWith
{
	if(life_atmcash < life_ticket_val) exitWith 
	{
		hint "Du hast weder genügend Geld auf dem Konto noch in Bar um den Strafzettel zu bezahlen.";
		[[1,format["%1 konnte das Ticket nicht bezahlen weil er nicht genügend Geld hat.",name player]],"life_fnc_broadcast",life_ticket_cop,false] spawn life_fnc_MP;
		closeDialog 0;
	};
	hint format["Du hast das Bußgeld in Höhe von $%1 bezahlt",[life_ticket_val] call life_fnc_numberText];
	life_atmcash = life_atmcash - life_ticket_val;
	life_ticket_paid = true;
	[[0,format["%1 hat ein Bußgeld in Höhe von $%2 bezahlt",name player,[life_ticket_val] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	closeDialog 0;
	//[[false,life_ticket_val],"life_fnc_ticketPayCops",life_ticket_cop,false] spawn life_fnc_MP;
};

life_cash = life_cash - life_ticket_val;
life_ticket_paid = true;

[[getPlayerUID player],"life_fnc_wantedRemove",false,false] spawn life_fnc_MP;
[[0,format["%1 hat ein Bußgeld in Höhe von $%2 bezahlt",name player,[life_ticket_val] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
closeDialog 0;
[[1,format["%1 hat den Strafzettel bezahlt.",name player]],"life_fnc_broadcast",life_ticket_cop,false] spawn life_fnc_MP;

[[false,life_ticket_val],"life_fnc_ticketPayCops",life_ticket_cop,false] spawn life_fnc_MP;