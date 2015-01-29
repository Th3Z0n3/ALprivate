/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Markt",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","storage2","hopfen","malz","bier"]]};
	case "tankstelleMarkt": {["Altis Tankstelle",["water","tbacon","fuelF"]]};
	case "wongs": {["Wangs Spezialitäten",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Kaffeeclub",["coffee","donuts"]]};
	case "heroin": {["Drogendealer",["cocainep","heroinp","marijuana","methp","shroomsp"]]};
	case "oil": {["Ölhändler",["oilp","fuelF"]]};
	case "fishmarket": {["Altis Fischmarkt",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glas Industrie",["glass"]]};
	case "iron": {["Altis Eisenhändler",["iron_r"]]};
	case "copper": {["Altis Kupferhändler",["copper_r"]]};
	case "diamond": {["Diamanthändler",["diamond","diamondc"]]};
	case "salt": {["Salzhändler",["salt_r"]]};
	case "cop": {["Polizeiladen",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF"]]};
	case "cement": {["Zementankauf",["cement"]]};
	case "chemist": {["Chemische Zutaten",["methu"]]};
	case "sammler": {["Der Sammler",["krokoleder"]]};
	case "jaeger": {["Schlingen kaufen",["schlinge","krokofleisch"]]};
	case "kohle": {["Kohlehändler",["kohler"]]};
	case "ingenieur": {["Ingenieurbedarf",["jackhammer"]]};
	case "silver": {["Silberhändler",["silverr"]]};
	case "gold": {["Goldhändler",["goldr"]]};
	case "stahl": {["Stahlhändler",["stahl"]]};
};