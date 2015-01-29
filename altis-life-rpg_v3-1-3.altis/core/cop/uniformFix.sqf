//////
//
#include <macro.h>
//
//////
private[];
_mode = _this select 0;

if(playerSide != west ) exitWith {};

if(__GETC__(life_coplevel) > 0) then
{
	//removeUniform player;
	//player addUniform "U_Rangemaser";
	player setObjectTextureGlobal [0,'textures\clothing\cop\cop_level1.paa'];
};
if(__GETC__(life_coplevel) > 1) then
{
	//removeUniform player;
	//player addUniform "U_B_CombatUniform_mcam";
	player setObjectTextureGlobal [0,'textures\clothing\cop\cop_level2.paa'];
};
if(__GETC__(life_coplevel) > 2) then
{
	//removeUniform player;
	//player addUniform "U_B_CombatUniform_mcam";
	player setObjectTextureGlobal [0,'textures\clothing\cop\cop_level3.paa'];
};
if(__GETC__(life_coplevel) > 3) then
{
	//removeUniform player;
	//player addUniform "U_B_CombatUniform_mcam";
	player setObjectTextureGlobal [0,'textures\clothing\cop\cop_level4.jpg'];
};
if(__GETC__(life_coplevel) > 4) then
{
	//removeUniform player;
	//player addUniform "U_B_CombatUniform_mcam";
	player setObjectTextureGlobal [0,'textures\clothing\cop\cop_level5.jpg'];
};

/*
//Platzhalter für Dutchii
if(__GETC__(life_coplevel) > 5) then
{
	//removeUniform player;
	//player addUniform "U_B_CombatUniform_mcam";
	player setObjectTextureGlobal [0,'textures\clothing\cop\cop_level5.paa'];
};
*/