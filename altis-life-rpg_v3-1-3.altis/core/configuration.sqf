#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_action_gather = false; //BugFix
life_spikestrip = ObjNull;
life_respawn_timer = 1; //Scaled in minutes
life_has_insurance = false;
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_abort_enabled = false;
nn_last_vehicles = [];
nn_empInUse = false;
ecoRunning = false;
life_explorer_wreck = objNull;
delay_pickaxe = false; // Q-Spam Pickaxe Fix

//Revive constant variables.
__CONST__(life_revive_cops,false); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,500);
//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];

/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Food Variables *******
*****************************
*/
life_eat_Salema = 40;
life_eat_Ornate = 20;
life_eat_Mackerel = 20;
life_eat_Tuna = 100;
life_eat_Mullet = 30;
life_eat_CatShark = 60;
life_eat_Rabbit = 20;
life_eat_Apple = 5;
life_eat_turtlesoup = 62;
life_eat_donuts = 30;

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_siren2_active = false;
life_sirenFahrzeug = false;
life_sirenWaffen = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_explorer_dead = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,350);
__CONST__(life_impound_boat,250);
__CONST__(life_impound_air,850);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west:
	{
		life_atmcash = 10000; //Starting Bank Money
		life_paycheck = 1600; //Paycheck Amount
	};
	case civilian:
	{
		life_atmcash = 6500; //Starting Bank Money
		life_paycheck = 850; //Paycheck Amount
	};
	case independent:
	{
		life_atmcash = 10000; //Starting Bank Money
		life_paycheck = 1000; //Paycheck Amount
	};
};

///// DRUGS ///// IN MINUTEN /////
life_drugged_cocaine = -1;
life_drugged_cocaine_duration = 10;
life_drugged_weed = -1;
life_drugged_weed_duration = 3;

/*
	Master Array of items?
*/
life_inv_items =
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_storage1",
    "life_inv_storage2",
	"life_inv_methu",
	"life_inv_methp",
	"life_inv_shroomsu",
	"life_inv_shroomsp",
	"life_inv_bier",
	"life_inv_malz",
	"life_inv_hopfen",
	"life_inv_krokodil",
	"life_inv_schlinge",
	"life_inv_krokofleisch",
	"life_inv_krokoleder",
	"life_inv_jackhammer",
	"life_inv_kohler",
	"life_inv_silver",
	"life_inv_silverr",
	"life_inv_gold",
	"life_inv_goldr",
	"life_inv_stahl"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_oildrill","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home", "civ"],
	["license_civ_meth","civ"],
	["license_civ_shrooms","civ"],
	["license_civ_bier","civ"],
	["license_civ_jagdlizenz","civ"],
	["license_civ_jackhammer","civ"],
	["license_civ_kohle","civ"],
	["license_civ_silver","civ"],
	["license_civ_gold","civ"],
	["license_civ_stahl","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22"];
//life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
life_dp_points2 = ["kavala_sp","aggelochori_sp","lakka_sp","neochori_sp","zaros_sp","charkia_sp","paros_sp","sofia_sp","pyrgos_sp","chalkeia_sp"];
//[shortVar,reward]
life_illegal_items = [["heroinp",3000],["cocainep",3900],["marijuana",2300],["turtle",6500],["methp",3750],["shroomsp",1835],["krokodil",4500],["krokoleder",9800]];
life_illegal_item_shortnames = ["heroinu","heroinp","cocaine","cocainep","marijuana","turtle","methu","methp","shroomsu","shroomsp","krokodil","krokoleder"];

/*
	Sell / buy arrays
*/
sell_array =
[
	//Drogen und Rohstoffe
	["heroinu",1850],
	["heroinp",3000],
	["cocaine",1500],
	["cocainep",3900],
	["marijuana",2300],
	["methu",425],
	["methp",3750],
	["shroomsu",180],
	["shroomsp",1835],
	["turtle",6500],
	["krokoleder",5500],
	["krokodil",2800],
	//Legale Rohstoffe
	["oilp",2150],
	["diamond",500],
	["diamondc",1550],
	["iron_r",1850],
	["copper_r",1750],
	["salt_r",1200],
	["glass",1650],
	["cement",1750],
	["hopfen",300],
	["malz",300],
	["kohler",850],
	["gold",40],
	["goldr",4300],
	["silver",10],
	["silverr",3800],
	["stahl",2260],
	//Essen und Trinken
	["krokofleisch",550],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["tbacon",25],
	["redgull",200],
	["apple",50],
	["peach",55],
	["bier",1650],
	//Objekte
	["fuelF",500],
	["lockpick",750],
	["pickaxe",750],
	["spikeStrip",1200],
	["schlinge",75],
	["jackhammer",1500]
];
__CONST__(sell_array,sell_array);

buy_array =
[
	//Drogen
	["methu",650],
	//Essen und Trinken
	["apple",65],
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["turtle",10000],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["peach",68],
	["redgull",1500],
	//Objekte
	["lockpick",2750],
	["pickaxe",1200],
	["fuelF",850],
	["spikeStrip",1500],
	["storage1",50000],
    ["storage2",250000],
	["schlinge",250],
	["jackhammer",15000]
];
__CONST__(buy_array,buy_array);

// Auskommentiert
/*
life_weapon_shop_array =
[
	["arifle_sdar_F",7500],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["ItemGPS",45],
	["ToolKit",75],
	["FirstAidKit",65],
	["Medikit",450],
	["NVGoggles",980],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",7500],
	["SLAMDirectionalMine_Wire_Mag",2575],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30],
	["srifle_LRR_LRPS_F", 12500],
	["7Rnd_408_Mag", 125]
];
*/

life_weapon_shop_array =
[
	["arifle_sdar_F",0],
	["hgun_P07_snds_F",0],
	["hgun_P07_F",0],
	["ItemGPS",0],
	["ToolKit",75],
	["FirstAidKit",65],
	["Binocular",0],
	["Medikit",450],
	["NVGoggles",0],
	["16Rnd_9x21_Mag",0],
	["20Rnd_556x45_UW_mag",0],
	["ItemMap",35],
	["ItemCompass",0],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",0],
	["arifle_Katiba_F",0],
	["30Rnd_556x45_Stanag",0],
	["20Rnd_762x51_Mag",0],
	["30Rnd_65x39_caseless_green",0],
	["DemoCharge_Remote_Mag",0],
	["SLAMDirectionalMine_Wire_Mag",0],
	["optic_ACO_grn",0],
	["acc_flashlight",0],
	["srifle_EBR_F",0],
	["arifle_TRG21_F",0],
	["optic_MRCO",0],
	["optic_Aco",0],
	["arifle_MX_F",0],
	["arifle_MXC_F",0],
	["arifle_MXM_F",0],
	["MineDetector",0],
	["optic_Holosight",0],
	["acc_pointer_IR",0],
	["arifle_TRG20_F",0],
	["SMG_01_F",0],
	["arifle_Mk20C_F",0],
	["30Rnd_45ACP_Mag_SMG_01",0],
	["30Rnd_9x21_Mag",0],
	["srifle_LRR_LRPS_F",0],
	["7Rnd_408_Mag",0]
];

__CONST__(life_weapon_shop_array,life_weapon_shop_array);

//Garagengebühr zum Ausparken - sind bei einigen zu hoch
life_garage_prices =
[
	["B_Quadbike_01_F",127],
	["C_Hatchback_01_F",285],
	["C_Hatchback_01_sport_F",4416],
	["C_Offroad_01_F",504],
	["C_SUV_01_F",410],
	["B_G_Offroad_01_F",504],
	["C_Van_01_transport_F",3800],
	["C_Van_01_fuel_F",4300],
	["C_Van_01_box_F",4700],
	["I_Truck_02_covered_F",5400],
	["I_Truck_02_transport_F",6000],
	["I_Truck_02_ammo_F",6800],
	["I_Truck_02_medical_F",7600],
	["I_Truck_02_fuel_F",8500],
	["I_Truck_02_box_F",9500],
	["O_Truck_03_transport_F",10600],
	["O_Truck_03_covered_F",11800],
	["O_Truck_03_ammo_F",13200],
	["O_Truck_03_medical_F",14800],
	["O_Truck_03_fuel_F",16600],
	["O_Truck_03_repair_F",18600],
	["B_Truck_01_mover_F",20800],
	["B_Truck_01_transport_F",20800],
	["B_Truck_01_covered_F",23300],
	["B_Truck_01_ammo_F",26200],
	["B_Truck_01_medical_F",29300],
	["B_Truck_01_fuel_F",32800],
	//["B_Truck_01_Repair_F",36700],
	["B_Truck_01_box_F",41200],
	["O_Truck_03_device_F",46100],
	["B_Heli_Light_01_F",17700],
	["B_Heli_Light_01_armed_F",17700],
	["O_Heli_Light_02_unarmed_F",35500],
	["I_Heli_light_03_unarmed_F",500],
	["B_Heli_Transport_01_F",800],
	["I_Heli_Transport_02_F",71000],
	["C_Rubberboat",500],
	["O_Boat_Armed_01_hmg_F",1800],
	["B_Boat_Armed_01_minigun_F",1800],
	["I_Boat_Armed_01_minigun_F",1800],
	["C_Boat_Civil_01_F",900],
	["C_Boat_Civil_01_police_F",900],
	["C_Boat_Civil_01_rescue_F",900],
	["B_MRAP_01_F",700],
	["B_MRAP_01_hmg_F",700],
	["O_MRAP_02_F",6500],
	["I_MRAP_03_F",600],
	["B_G_Offroad_01_armed_F",36500]
];
__CONST__(life_garage_prices,life_garage_prices);

//Verkaufspreis aus der Garage
life_garage_sell =
[
	["B_Quadbike_01_F",4400],
	["C_Hatchback_01_F",6600],
	["C_Hatchback_01_sport_F",103000],
	["C_Offroad_01_F",11800],
	["C_SUV_01_F",9600],
	["B_G_Offroad_01_F",11800],
	["C_Van_01_transport_F",132500],
	["C_Van_01_fuel_F",149000],
	["C_Van_01_box_F",165600],
	["I_Truck_02_covered_F",187700],
	["I_Truck_02_transport_F",209800],
	["I_Truck_02_ammo_F",237400],
	["I_Truck_02_medical_F",265000],
	["I_Truck_02_fuel_F",298100],
	["I_Truck_02_box_F",331200],
	["O_Truck_03_transport_F",369800],
	["O_Truck_03_covered_F",414000],
	["O_Truck_03_ammo_F",463700],
	["O_Truck_03_medical_F",518900],
	["O_Truck_03_fuel_F",579600],
	["O_Truck_03_repair_F",651400],
	//["B_Truck_01_mover_F",728600],
	["B_Truck_01_transport_F",728600],
	["B_Truck_01_covered_F",817000],
	["B_Truck_01_ammo_F",916300],
	["B_Truck_01_medical_F",1026700],
	["B_Truck_01_fuel_F",1148200],
	//["B_Truck_01_Repair_F",1286200],
	["B_Truck_01_box_F",1440700],
	["O_Truck_03_device_F",1611800],
	["B_Heli_Light_01_F",186950],
	["B_Heli_Light_01_armed_F",186950],
	["O_Heli_Light_02_unarmed_F",1242000],
	["I_Heli_light_03_unarmed_F",16200],
	["B_Heli_Transport_01_F",28800],
	["I_Heli_Transport_02_F",2484000],
	["C_Rubberboat",16200],
	["O_Boat_Armed_01_hmg_F",63000],
	["B_Boat_Armed_01_minigun_F",63000],
	["I_Boat_Armed_01_minigun_F",63000],
	["C_Boat_Civil_01_F",30600],
	["C_Boat_Civil_01_police_F",30600],
	["C_Boat_Civil_01_rescue_F",30600],
	["B_MRAP_01_F",23400],
	["B_MRAP_01_hmg_F",23400],
	["O_MRAP_02_F",1500000],
	["I_MRAP_03_F",19800],
	["B_G_Offroad_01_armed_F",1283400]
];
__CONST__(life_garage_sell,life_garage_sell);

//Verkaufspreis beim Autohehler
life_hehler_sell =
[
	["B_Quadbike_01_F",1520],
	["C_Hatchback_01_F",3250],
	["C_Hatchback_01_sport_F",51860],
	["C_Offroad_01_F",5980],
	["C_SUV_01_F",4960],
	["B_G_Offroad_01_F",5980],
	["C_Van_01_transport_F",46400],
	["C_Van_01_fuel_F",52200],
	["C_Van_01_box_F",58000],
	["I_Truck_02_covered_F",65700],
	["I_Truck_02_transport_F",73400],
	["I_Truck_02_ammo_F",83100],
	["I_Truck_02_medical_F",92700],
	["I_Truck_02_fuel_F",104300],
	["I_Truck_02_box_F",115900],
	["O_Truck_03_transport_F",129400],
	["O_Truck_03_covered_F",144900],
	["O_Truck_03_ammo_F",162300],
	["O_Truck_03_medical_F",181600],
	["O_Truck_03_fuel_F",202900],
	["O_Truck_03_repair_F",228000],
	//["B_Truck_01_mover_F",255000],
	["B_Truck_01_transport_F",255000],
	["B_Truck_01_covered_F",285900],
	["B_Truck_01_ammo_F",320700],
	["B_Truck_01_medical_F",359400],
	["B_Truck_01_fuel_F",401900],
	//["B_Truck_01_Repair_F",450200],
	["B_Truck_01_box_F",504300],
	["O_Truck_03_device_F",564100],
	["B_Heli_Light_01_F",42860],
	["B_Heli_Light_01_armed_F",42860],
	["O_Heli_Light_02_unarmed_F",434700],
	["I_Heli_light_03_unarmed_F",869400],
	["B_Heli_Transport_01_F",10100],
	["I_Heli_Transport_02_F",5700],
	["C_Rubberboat",5700],
	["O_Boat_Armed_01_hmg_F",22100],
	["B_Boat_Armed_01_minigun_F",22100],
	["I_Boat_Armed_01_minigun_F",22100],
	["C_Boat_Civil_01_F",10700],
	["C_Boat_Civil_01_police_F",10700],
	["C_Boat_Civil_01_rescue_F",10700],
	["B_MRAP_01_F",8200],
	["B_MRAP_01_hmg_F",8200],
	["O_MRAP_02_F",525000],
	["I_MRAP_03_F",6900],
	["B_G_Offroad_01_armed_F",449190]
];
__CONST__(life_hehler_sell,life_hehler_sell);