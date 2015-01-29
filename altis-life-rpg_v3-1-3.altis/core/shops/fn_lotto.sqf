/*
	File: fn_lotto.sqf
	Author: unknown? Please PM if its yours for credits!
	
	Description:
	Play Lotto
*/

private ["_number","_civ","_jackpot","_ticket"]; //INIT
_civ = [_this,0,1,[0]] call BIS_fnc_param;
_number = floor(random 350) + 1;
_ticket = life_cash;

if (_ticket > 5500) then //Genug Geld?
{
	life_cash = life_cash - 5500; //-2000$
	

	switch (_number) do
	{
		case 1 : 
		{
			
			_jackpot = 250000;
			hint format["Du hast den Jackpot mit: \n %1 $ geknackt!!!, \n Gewinn Klasse: 1",_jackpot];
			life_cash = life_cash + _jackpot;
			[[0,format[">>> %1 hat den Jackpot geknackt! <<<",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		};
	
		case 2 : {_jackpot = 5500; hint format["Du hast %1 $ Gewonnen, \n Gewinn Klasse: 4",_jackpot,_ticket,_number]; life_cash = life_cash + _jackpot;};
		case 3 : {_jackpot = 5500; hint format["Du hast %1 $ Gewonnen, \n Gewinn Klasse: 4",_jackpot,_ticket,_number]; life_cash = life_cash + _jackpot;};
		case 4 : {_jackpot = 5500; hint format["Du hast %1 $ Gewonnen, \n Gewinn Klasse: 4",_jackpot,_ticket,_number]; life_cash = life_cash + _jackpot;};
		case 5 : {_jackpot = 5500; hint format["Du hast %1 $ Gewonnen, \n Gewinn Klasse: 4",_jackpot,_ticket,_number]; life_cash = life_cash + _jackpot;};
		case 6 : {_jackpot = 5500; hint format["Du hast %1 $ Gewonnen, \n Gewinn Klasse: 4",_jackpot,_ticket,_number]; life_cash = life_cash + _jackpot;};
		case 7 : {_jackpot = 5500; hint format["Du hast %1 $ Gewonnen, \n Gewinn Klasse: 4",_jackpot,_ticket,_number]; life_cash = life_cash + _jackpot;};
		case 8 : {_jackpot = 5500; hint format["Du hast %1 $ Gewonnen, \n Gewinn Klasse: 4",_jackpot,_ticket,_number]; life_cash = life_cash + _jackpot;};
		case 9 : {_jackpot = 5500; hint format["Du hast %1 $ Gewonnen, \n Gewinn Klasse: 4",_jackpot,_ticket,_number]; life_cash = life_cash + _jackpot;};
	
	
		case 50 : 
		{
			_jackpot = 50000;
			hint format["Du hast \n %1 $ Gewonnen, \n Gewinn Klasse: 2",_jackpot,_ticket,_number];
			life_cash = life_cash + _jackpot;
		};
		case 51 : 
		{
			_jackpot = 50000;
			hint format["Du hast \n %1 $ Gewonnen, \n Gewinn Klasse: 2",_jackpot,_ticket,_number];
			life_cash = life_cash + _jackpot;
		};
		case 100 : 
		{
			_jackpot = 25000;
			hint format["Du hast: \n %1 $ Gewonnen, \n Gewinn Klasse: 3",_jackpot,_ticket,_number];
			life_cash = life_cash + _jackpot;
		};
		case 99 : 
		{
			_jackpot = 25000;
			hint format["Du hast: \n %1 $ Gewonnen, \n Gewinn Klasse: 3",_jackpot,_ticket,_number];
			life_cash = life_cash + _jackpot;
		};
		case 98 : 
		{
			_jackpot = 50000;
			hint format["Du hast: \n %1 $ Gewonnen, \n Gewinn Klasse: 3",_jackpot,_ticket,_number];
			life_cash = life_cash + _jackpot;
		};
		default
		{
			hint format["Du hast leider eine Niete Gezogen \n Losnummer: %1",_number];
		};
	};
}
else
{
	hint "Du hast nicht genug Geld";
};


