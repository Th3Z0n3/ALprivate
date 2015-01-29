/*
	File: fn_drugtestAction.sqf
	Author: Leucocia
	
	Description:
	Test for Drugusage.
*/

private["_unit","_dText","_weed","_cocaine","_heroin","_mushroom"];

_unit = cursorTarget;
if(isNull _unit) exitWith {};

hint "Testing...";
sleep 2;

if(player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint "Test failed."};

if(_unit getVariable["drug_weed",false]) then { _weed = "Positiv"; } else { _weed = "Negativ"; };
if(_unit getVariable["drug_cocaine",false]) then { _cocaine = "Positiv"; } else { _cocaine = "Negativ"; };
if(_unit getVariable["drug_heroin",false]) then { _heroin = "Positiv"; } else { _heroin = "Negativ"; };
if(_unit getVariable["drug_mushroom",false]) then { _mushroom = "Positiv"; } else { _mushroom = "Negativ"; };

hint parseText format["<t color='#FF0000'><t size='2'>%1</t></t><br/><t color='#FFD700'>Cannabis: </t>%2<br/><t color='#FFD700'>Kokain: </t>%3<br/><t color='#FFD700'>Heroin: </t>%4<br/><t color='#FFD700'>Magic Mushrooms: </t>%5<br/><br/><t color='#FF0000'>%6</t>"
,name _unit,_weed,_cocaine,_heroin,_mushroom];