/*
	File: fn_equipGear.sqf
	Author: Le Aphec
	Edit by: Taiwendo
	
	Description:
	Initializes custom gear textures
*/
if (playerSide == west) then {
	if ((uniform player) == "U_Competitor_00") then
	{
		[[player,"textures\clothing\cop\c_competitor_ctp_00.paa"], "life_fnc_setUniform", true, true] spawn BIS_fnc_MP;
	};
	if ((uniform player) == "U_Competitor_01") then
	{
		[[player,"textures\clothing\cop\c_competitor_ctp_01.paa"], "life_fnc_setUniform", true, true] spawn BIS_fnc_MP;
	};
	if ((uniform player) == "U_Competitor_02") then
	{
		[[player,"textures\clothing\cop\c_competitor_ctp_02.paa"], "life_fnc_setUniform", true, true] spawn BIS_fnc_MP;
	};
/*
	if ((uniform player) == "U_BG_Guerilla2_1") then
	{
		[[player,"textures\clothing\cop\PLATZHALTER.paa"], "life_fnc_setUniform", true, true] spawn BIS_fnc_MP;
	};
*/
};
