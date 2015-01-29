/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {"Rohöl"};
	case "life_inv_oilp": {"Öl"};
	case "life_inv_heroinu": {"Unreines Heroin"};
	case "life_inv_heroinp": {"Heroin"};
	case "life_inv_cannabis": {"Cannabis"};
	case "life_inv_marijuana": {"Marijuana"};
	case "life_inv_apple": {"Apfel"};
	case "life_inv_rabbit": {"Hasenfleisch"};
	case "life_inv_salema": {"Salema Fleisch"};
	case "life_inv_ornate": {"Ornate Fleisch"};
	case "life_inv_mackerel": {"Makrelenfleisch"};
	case "life_inv_tuna": {"Thunfisch-Fleisch"};
	case "life_inv_mullet": {"Meeräschenfleisch"};
	case "life_inv_catshark": {"Katzenhai-Fleisch"};
	case "life_inv_turtle": {"Schildkrötenfleisch"};
	case "life_inv_fishingpoles": {"Angel"};
	case "life_inv_water": {"Wasserflasche"};
	case "life_inv_coffee": {"Kaffee"};
	case "life_inv_turtlesoup": {"Schildkrötensuppe"};
	case "life_inv_donuts": {"Donuts"};
	case "life_inv_fuelE": {"Leerer Benzinkanister"};
	case "life_inv_fuelF": {"Benzinkanister"};
	case "life_inv_pickaxe": {"Spitzhacke"};
	case "life_inv_copperore": {"Kupfererz"};
	case "life_inv_ironore": {"Eisenerz"};
	case "life_inv_ironr": {"Eisenbarren"};
	case "life_inv_copperr": {"Kupferbarren"};
	case "life_inv_sand": {"Sand"};
	case "life_inv_salt": {"Salz"};
	case "life_inv_saltr": {"Veredeltes Salz"};
	case "life_inv_glass": {"Glas"};
	case "life_inv_diamond": {"Ungeschnittener Diamant"};
	case "life_inv_diamondr": {"Diamant"};
	case "life_inv_tbacon": {"Taktischer Frühstücksspeck"};
	case "life_inv_redgull": {"RedGull"};
	case "life_inv_lockpick": {"Dietrich"};
	case "life_inv_peach": {"Pfirsich"};
	case "life_inv_coke": {"Unreines Kokain"};
	case "life_inv_cokep": {"Reines Kokain"};
	case "life_inv_spikeStrip": {"Nagelband"};
	case "life_inv_rock": {"Stein"};
	case "life_inv_cement": {"Zementsack"};
	case "life_inv_goldbar": {"Goldbarren"};
	case "life_inv_storage1": {"Haus Kiste"};
    case "life_inv_storage2": {"Haus Kiste gross"};
	case "life_inv_methu": {"Meth Zutaten"};
	case "life_inv_methp": {"Crystal Meth"};
	case "life_inv_shroomsu": {"Einfache Pilze"};
	case "life_inv_shroomsp": {"Magic Mushrooms"};
	case "life_inv_hopfen": {"Hopfen"};
	case "life_inv_malz": {"Malz"};
	case "life_inv_bier": {"Bier"};
	case "life_inv_krokodil": {"Krokodil"};
	case "life_inv_schlinge": {"Schlinge"};
	case "life_inv_krokofleisch": {"Krokodilfleisch"};
	case "life_inv_krokoleder": {"Krokodilleder"};
	case "life_inv_jackhammer": {"Presslufthammer"};
	case "life_inv_kohler": {"Kohle"};
	case "life_inv_stahl": {"Stahl"};
	case "life_inv_silver" : {"Silbererz"};
	case "life_inv_silverr" : {"Silber"};
	case "life_inv_gold" : {"Golderz"};
	case "life_inv_goldr" : {"Gold"};

	//License Block
	case "license_civ_driver": {"Führerschein"};
	case "license_civ_air": {"Fluglizenz"};
	case "license_civ_heroin": {"Heroin-Training"};
	case "license_civ_gang": {"Gang-Lizenz"};
	case "license_civ_oil": {"Ölverarbeitung"};
	case "license_civ_oildrill": {"Ölbohrlizenz"};
	case "license_civ_dive": {"Tauchschein"};
	case "license_civ_boat": {"Bootslizenz"};
	case "license_civ_gun": {"Waffenschein"};
	case "license_cop_air": {"Fluglizenz (Polizei)"};
	case "license_cop_swat": {"SEK Ausbildung"};
	case "license_cop_cg": {"Küstenwache"};
	case "license_civ_rebel": {"Rebellentraining"};
	case "license_civ_truck": {"LKW Führerschein"};
	case "license_civ_diamond": {"Diamantenverarbeitung"};
	case "license_civ_copper": {"Kupferverarbeitung"};
	case "license_civ_iron": {"Eisenverarbeitung"};
	case "license_civ_sand": {"Sandverarbeitung"};
	case "license_civ_salt": {"Salzverarbeitung"};
	case "license_civ_coke": {"Kokain-Training"};
	case "license_civ_marijuana": {"Marijuana-Training"};
	case "license_civ_cement": {"Zementverarbeitung"};
	case "license_civ_home": {"Hauseigentümer"};
	case "license_civ_meth": {"Crystal Meth Training"};
	case "license_civ_shrooms": {"Magic Mushroom Training"};
	case "license_civ_bier": {"Brauerei-Lizenz"};
	case "license_civ_jagdlizenz": {"Tierjagd-Lizenz"};
	case "license_civ_jackhammer": {"Diplomingenieur"};
	case "license_civ_stahl": {"Gießereilizenz"};
	case "license_civ_gold": {"Goldverarbeitung"};
	case "license_civ_silver": {"Silberverarbeitung"};
	case "license_civ_kohle": {"Kohleverarbeitung"};
};
