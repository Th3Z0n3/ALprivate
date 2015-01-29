/*
	File: fn_seizePlayerWeaponAction.sqf
	Author: Skalicon
	
	Description:
	Removes the players weapons client side
*/
//removeAllWeapons player;
player removeWeapon "arifle_Mk20C_F";
player removeWeapon "arifle_TRG20_F";
player removeWeapon "arifle_TRG21_F";
player removeWeapon "arifle_Katiba_C_F";
player removeWeapon "srifle_DMR_01_F";
player removeWeapon "arifle_SDAR_F";
player removeWeapon "hgun_P07_snds_F";
player removeWeapon "hgun_P07_F";
player removeWeapon "SMG_02_F";
player removeWeapon "arifle_MX_F";
player removeWeapon "arifle_MXC_F";
player removeWeapon "arifle_MX_GL_F";
player removeWeapon "SmokeShellGreen";
player removeWeapon "1Rnd_SmokeGreen_Grenade_shell";
player removeWeapon "hgun_Pistol_heavy_01_F";
player removeWeapon "arifle_MX_Black_F";
player removeWeapon "arifle_MXC_Black_F";
player removeWeapon "arifle_MX_GL_Black_F";
player removeWeapon "arifle_MX_SW_Black_F";
player removeWeapon "arifle_MXM_Black_F";
[] call life_fnc_civFetchGear;
[] call life_fnc_sessionUpdate; //Should make weapon remove persistent
//[] call life_fnc_civLoadGear;
titleText["Ihre Waffen wurden entfernt.","PLAIN"];