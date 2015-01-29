#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniformen
	case 0:
	{
		_ret set[count _ret,["U_B_CombatUniform_mcam","QuickFix Uniform",25]];
		//_ret set[count _ret,["U_Competitor","ADAC Uniform",25]];
		
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret set[count _ret,["U_Rangemaster","Anwärter Uniform",350]];
		};
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["U_Rangemaster","Polizei Uniform",350]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["U_KerryBody","Ausbilder Uniform",550]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["U_I_CombatUniform","Bundespolizist Uniform",550]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["U_O_SpecopsUniform_ocamo","SEK Uniform",750]];
			_ret set[count _ret,["U_O_Wetsuit","SEK Uniform",750]];
			_ret set[count _ret,["U_O_GhillieSuit","SEK Uniform",750]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret set[count _ret,["U_O_SpecopsUniform_ocamo","Polizeipräsident Uniform",750]];
		};
	};
	
	//Kopfbedeckungen
	case 1:
	{
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret set[count _ret,["H_Cap_blk",nil,75]];
		};
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,90]];
			_ret set[count _ret,["H_CrewHelmetHeli_B",nil,90]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["H_MilCap_blue",nil,175]];
			_ret set[count _ret,["H_Watchcap_blk",nil,175]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
			_ret set[count _ret,["H_Shemag_tan",nil,120]];
			_ret set[count _ret,["H_HelmetSpecO_ocamo",nil,120]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["H_Beret_Colonel",nil,200]];
		};
	};
	
	//Brillen
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Diving",nil,50]
		];
	};
	
	//Westen
	case 3:
	{
		_ret set[count _ret,["V_Press_F",nil,8500]];
		_ret set[count _ret,["V_Rangemaster_belt",nil,500]];
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret set[count _ret,["V_Chestrig_khk",nil,650]];
		};
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["V_TacVest_blk",nil,850]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["V_HarnessO_gry",nil,250]];
			_ret set[count _ret,["V_PlateCarrier1_blk","Tränengasweste",500]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["V_RebreatherB",nil,950]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["V_TacVest_oli",nil,450]];
		};
	};
	
	//Rucksäcke
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_AssaultPack_blk",nil,750],
			["B_AssaultPack_sgg",nil,800],
			["B_AssaultPack_mcamo",nil,850],
			["B_AssaultPack_ocamo",nil,900],
			["B_AssaultPack_dgtl",nil,950],
			["B_AssaultPack_khk",nil,1000],
			["B_Bergen_sgg",nil,2500],
			["B_Carryall_cbr",nil,3500],
			["B_Parachute",nil,1500]
			//["tf_anprc155",nil,1500]
		];
	};
};

_ret;