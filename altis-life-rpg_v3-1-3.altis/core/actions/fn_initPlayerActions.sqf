/*
	File: initPlayerActions.sqf
	Author: Cyborg11
	
	Description: Initialisation of players
	in init: nul = [this] execVM "initPlayerActions.sqf";

*/

private [_player];
_player = this select 0;

_player addAction["Jagdzubehör kaufen",life_fnc_virt_menu,"jaeger",0,false,false,"",' vehicle player == player && player distance _target < 5 && playerSide == civilian '];
_player addAction["<img size='1.5' shadow='2' image='icons\illegal\krock_ca.paa'/>  <t size='1.5' color='#ED2744'>Krokodil ausweiden</t>", life_fnc_processKrokodil, "", 0, false, false, "", 'vehicle player == player && player distance _target < 1'];
_player addAction[format["%1 ($%2)",["license_civ_jagdlizenz"] call life_fnc_varToStr,[(["jagdlizenz"] call life_fnc_licensePrice)] call life_fnc_numberText],life_fnc_buyLicense,"jagdlizenz",0,false,false,"",' !license_civ_jagdlizenz && playerSide == civilian '];