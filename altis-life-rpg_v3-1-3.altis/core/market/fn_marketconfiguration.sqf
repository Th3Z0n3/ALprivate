/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, DEFAULT-WERT, MIN-WERT, MAX-WERT, VERÄNDERUNG BEI AKTION [VERKAUF Multipliziert mit 1, Kauf multipliziert um -1
	//["gold", 1500, 450, 2300, 8, 5],
	["goldr", 2700, 1350, 3240, 1, 1,
		[
			["diamondc",1], //If you sell 1x goldr, the market system will "buy" 1x diamondc => diamondc price will increase
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["silverr",1],
			["kohler",1],
			["stahl",1],
			["glass",1]
		]
	],

	["oilp", 2150, 1080, 2580, 1, 1,
		[
			["diamondc",1],
			["goldr",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["silverr",1],
			["kohler",1],
			["stahl",1],
			["glass",1]
		]
	],

	["iron_r", 2100, 1050, 2520, 1, 1,
		[
			["diamondc",1],
			["oilp",1],
			["goldr",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["silverr",1],
			["kohler",1],
			["stahl",1],
			["glass",1]
		]
	],

	["diamondc", 1700, 850, 2040, 1, 1,
		[
			["goldr",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["silverr",1],
			["kohler",1],
			["stahl",1],
			["glass",1]
		]
	],

	["copper_r", 1750, 880, 2100, 1, 1,
		[
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["goldr",1],
			["salt_r",1],
			["cement",1],
			["silverr",1],
			["kohler",1],
			["stahl",1],
			["glass",1]
		]
	],

	["salt_r", 1550, 780, 1860, 1, 1,
		[
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["goldr",1],
			["cement",1],
			["silverr",1],
			["kohler",1],
			["stahl",1],
			["glass",1]
		]
	],

	["glass", 1650, 830, 1980, 1, 1,
		[
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["silverr",1],
			["kohler",1],
			["stahl",1],
			["goldr",1]
		]
	],

	["cement", 1750, 880, 2100, 1, 1,
		[
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["goldr",1],
			["stahl",1],
			["silverr",1],
			["kohler",1],
			["glass",1]
		]
	],

	["silverr", 2950, 1480, 3540, 1, 1,
		[
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["stahl",1],
			["goldr",1],
			["kohler",1],
			["glass",1]
		]
	],

	["kohler", 650, 330, 780, 1, 1,
		[
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["silverr",1],
			["goldr",1],
			["stahl",1],
			["glass",1]
		]
	],

	["stahl", 9150, 4580, 10980, 1, 1,
		[
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["silverr",1],
			["goldr",1],
			["kohler",1],
			["glass",1]
		]
	],

	///////////////////////////////////

	["turtle", 6500, 5200, 7800, 1, 1,
		[
			["heroinp",1],
			["cocainep",1],
			["marijuana",1],
			["methp",1],
			["shroomsp",1],
			["krokoleder",1]
		]
	],


	["marijuana", 2300, 1840, 2760, 1, 1,
		[
			["heroinp",1],
			["cocainep",1],
			["turtle",1],
			["methp",1],
			["shroomsp",1],
			["krokoleder",1]
		]
	],

	["cocainep", 3900, 3120, 4680, 1, 1,
		[
			["heroinp",1],
			["marijuana",1],
			["turtle",1],
			["methp",1],
			["shroomsp",1],
			["krokoleder",1]
		]
	],

	["heroinp", 3000, 2400, 3600, 1, 1,
		[
			["cocainep",1],
			["marijuana",1],
			["turtle",1],
			["methp",1],
			["shroomsp",1],
			["krokoleder",1]

		]
	],

	["methp", 3750, 3000, 4500, 1, 1,
		[
			["heroinp",1],
			["marijuana",1],
			["turtle",1],
			["cocainep",1],
			["shroomsp",1],
			["krokoleder",1]

		]
	],

	["shroomsp", 1835, 1470, 2200, 1, 1,
		[
			["heroinp",1],
			["marijuana",1],
			["turtle",1],
			["methp",1],
			["cocainep",1],
			["krokoleder",1]
		]
	],

	["krokoleder", 5500, 4400, 6600, 1, 1,
		[
			["heroinp",1],
			["marijuana",1],
			["turtle",1],
			["methp",1],
			["cocainep",1],
			["shroomsp",1]
		]
	]
];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

////////////SYNC PRICES WITH SERVER IF EMPTY
//if(isNil("life_market_prices")) then
//{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{

		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;

	publicVariable "life_market_prices";

	systemChat "Market Prices Generated!";
//};