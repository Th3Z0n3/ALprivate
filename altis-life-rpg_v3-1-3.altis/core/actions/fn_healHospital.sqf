/*
	File: fn_healHospital.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Doesn't matter, will be revised later.
*/
if(life_cash < 50) exitWith {hint "Du benötigt $50 um die Krankenhausrechnung zu zahlen"};
titleText["Doctor Alan heilt dich... Hab keine Angst...","PLAIN"];
sleep 2;
titleText["Ups, da habe ich die Nadel wohl ins falsche Loch gesteckt...","PLAIN"];
sleep 5;
if(player distance (_this select 0) > 5) exitWith {titleText["Du musst in der Nähe des Doktors bleiben, damit er dich... heilen kann.","PLAIN"]};
titleText["Mir geht es jetzt wesentlich besser. Glaube ich. Oder?","PLAIN"];
player setdamage 0;
life_cash = life_cash - 50;