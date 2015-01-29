[] spawn  {
	private["_fnc_food","_fnc_water"];
	_fnc_food =
	{
		if(life_hunger < 2) then {player setDamage 1; hint "Du bist verhungert.";}
		else
		{
		life_hunger = life_hunger - 10;
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then {player setDamage 1; hint "Du bist verhungert.";};
		switch(life_hunger) do {
			case 30: {hint parseText "<t color='#F5F236'>Du hast seit langem nichts mehr gegessen. Vielleicht wird es Zeit für einen Snack?</t>";};
			case 20: {hint parseText "<t color='#F58C36'>Du beginnst zu verhungern. Los, besorg dir was zu Essen!</t>";};
			case 10: {hint parseText "<t color='#ff0000'>Du verhungerst!</t>";player setFatigue 1;};
			};
		};
	};

	//Textfarbe EXAMPLE: hint parseText "<t color='#F58C36'>DEIN TEXT!</t>";

	_fnc_water =
	{
		if(life_thirst < 2) then {player setDamage 1; hint "Du bist an Wassermangel gestorben.";}
		else
		{
			life_thirst = life_thirst - 10;
			[] call life_fnc_hudUpdate;
			if(life_thirst < 2) then {player setDamage 1; hint "Du bist an Wassermangel gestorben.";};
			switch(life_thirst) do
			{
				case 30: {hint parseText "<t color='#F5F236'>Du hast schon lange nichts mehr getrunken. Vielleicht wird es Zeit für einen Drink?</t>";};
				case 20: {hint parseText "<t color='#F58C36'>Du solltest jetzt wirklich etwas trinken.</t>"; player setFatigue 1;};
				case 10: {hint parseText "<t color='#ff0000'>Du leidest an einer schweren Dehydrierung. Finde Wasser!</t>"; player setFatigue 1;};
			};
		};
	};

	while{true} do
	{
		sleep 600;
		[] call _fnc_water;
		sleep 250;
		[] call _fnc_food;
	};
};

[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 8);
		life_maxWeight = life_maxWeightT + _load;
		waitUntil {backpack player != _bp};
		if(backpack player == "") then
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};

[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			hint "Du trägst zuviel bei dir! Du kannst nicht mehr rennen, wenn du nichts wegschmeisst.";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};

[] spawn
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1200;
	while{true} do
	{
		sleep 0.5;
		if(!alive player) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (vehicle player == player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					life_thirst = life_thirst - 5;
					life_hunger = life_hunger - 5;
					[] call life_fnc_hudUpdate;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
};