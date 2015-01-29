/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {500}; //Drivers License cost
	case "boat": {1000}; //Boating license cost
	case "pilot": {25000}; //Pilot/air license cost
	case "gun": {50000}; //Firearm/gun license cost
	case "dive": {2000}; //Diving license cost

	case "cair": {15000}; //Cop Pilot License cost
	case "swat": {35000}; //Swat License cost
	case "cg": {8000}; //Coast guard license cost
	case "bier": {15000};
	case "medmarijuana": {1500}; //Medical Marijuana processing license cost
	case "gang": {1000}; //Gang license cost
	case "rebel": {850000}; //Rebel license cost
	case "truck": {35000}; //Truck license cost
	case "jagdlizenz": {150000};
	case "jackhammer": {100000};
	case "home": {1000000};

	case "meth": {75000};
	case "cocaine": {100000};
	case "heroin": {75000}; //Heroin processing license cost
	case "marijuana": {90000}; //Marijuana processing license cost
	case "shrooms": {35000};

	//Tier 1 Materialien
	case "copper": {50000};
	case "salt": {150000};
	case "sand": {130000};
	case "iron": {160000};
	case "cement": {170000};
	case "oil": {150000}; //Oil processing license cost
	case "oildrill": {150000};
	case "diamond": {180000};
	case "gold": {50000}; //##11
	case "silver": {170000};

	//Tier 2 Materialien
	case "stahl": {350000};

};