#include <macro.h>
private["_path","_unit","_type"];
_unit = [_this,0] call BIS_fnc_param;
_type = [_this,1,"",[""]] call BIS_fnc_param;

if(__GETC__(life_coplevel) > 0) then {
switch(_type) do {
case "U_Rangemaster" : {
	_path = "textures\clothing\cop\cop_level1.paa";
	_unit setObjectTextureGlobal [0,_path];
	};
	};
};

if(__GETC__(life_coplevel) > 1) then {
switch(_type) do {
case "U_B_CombatUniform_mcam" : {
	_path = "textures\clothing\cop\cop_level2.paa";
	_unit setObjectTextureGlobal [0,_path];
	};
	};
};

if(__GETC__(life_coplevel) > 2) then {
switch(_type) do {
case "U_B_CombatUniform_mcam" : {
	_path = "textures\clothing\cop\cop_level3.paa";
	_unit setObjectTextureGlobal [0,_path];
	};
	};
};

if(__GETC__(life_coplevel) > 3) then {
switch(_type) do {
case "U_B_CombatUniform_mcam" : {
	_path = "textures\clothing\cop\cop_level4.jpg";
	_unit setObjectTextureGlobal [0,_path];
	};
	};
};

if(__GETC__(life_coplevel) > 4) then {
switch(_type) do {
case "U_B_CombatUniform_mcam" : {
	_path = "textures\clothing\cop\cop_level5.jpg";
	_unit setObjectTextureGlobal [0,_path];
	};
	};
};

//Platzhalter für Dutchii
/*
if(__GETC__(life_coplevel) > 4) then {
switch(_type) do {
case "U_B_CombatUniform_mcam" : {
	_path = "textures\clothing\cop\cop_level5.jpg";
	_unit setObjectTextureGlobal [0,_path];
	};
	};
};
*/