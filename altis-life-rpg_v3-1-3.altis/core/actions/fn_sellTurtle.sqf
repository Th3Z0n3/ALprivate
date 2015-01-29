/*
	File: fn_sellTurtle.sqf
	
	Description:
	Sells the turtles! Save the turtles!
	This was a super lazy thing to do but I just want to push it...
*/
if(life_inv_turtle == 0) exitWith {
	titleText["Du hast keine Schildkröten, die du verkaufen könntest.","PLAIN"];
};

_price = round(life_inv_turtle * 6500);
if([false,"turtle",life_inv_turtle] call life_fnc_handleInv) then {
	life_cash = life_cash + _price;
	titleText[format["Du hast %1 Schildkröte(n) für $%2 verkauft",round(_price / 6500),[_price] call life_fnc_numberText],"PLAIN"];
};