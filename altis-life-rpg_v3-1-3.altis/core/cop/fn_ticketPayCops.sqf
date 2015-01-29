private["_money","_check"];
_check = _this select 0;
_money = _this select 1;

if(!_check) then
{
	{
		if(alive _x) then
		{
			if(side _x == west) then
			{
				if( str(player) in ["cop_1","cop_2","cop_3","cop_4","cop_5","cop_6","cop_7","cop_8","cop_9","cop_10","cop_11","cop_12","cop_13","cop_14","cop_15","cop_16","cop_17","cop_18","cop_19","cop_20"]) then
				{
					[[true,_money], "life_fnc_ticketPayCops", _x, false] spawn life_fnc_MP;
				};
			};
		};
	} foreach playableUnits;
	
	_money = round (_money * 0.00);
} else
{
	_money = round (_money * 0.16);
	hint format["Ein Polizist hat einen Strafzettel ausgestellt. Dafür hast du %1 erhalten.",_money];
};


life_atmcash = life_atmcash + _money;