#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			default
			{
				["Basis Shop",
					[
						["Binocular",nil,225],
						["ItemGPS",nil,825],
						["ToolKit",nil,550],
						["FirstAidKit",nil,375],
						["Medikit",nil,550],
						["NVGoggles",nil,1500],
						["ItemMap",nil,300],
						["ItemCompass",nil,300],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300]
					]
				];
			};
		};
	};
	
	case "cop_rekrut":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Anwärter!"};
			case (__GETC__(life_coplevel) < 1): {"Dein Rang ist nicht hoch genug!"};
			default
			{
				["Anwärter Shop",
					[
						["hgun_P07_snds_F","Taser Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						["arifle_sdar_F","Taser Rifle",15000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125]
					]
				];
			};
		};
	};
	
	case "cop_cop":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 2): {"Dein Rang ist nicht hoch genug!"};
			default
			{
				["Polizei Shop",
					[
						["hgun_P07_snds_F","Taser Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						["arifle_sdar_F","Taser Rifle",15000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["SMG_02_F",nil,20000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_MX_F",nil,22000],
						["30Rnd_65x39_caseless_mag",nil,300],
						["30Rnd_65x39_caseless_mag_Tracer",nil,300],
						["muzzle_snds_H",nil,650],
						["optic_Holosight_smg",nil,1200],
						["optic_Holosight",nil,1200],
						["optic_Hamr",nil,1200],
						["acc_flashlight",nil,750]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 3): {"Du bist kein Bundesbeamter!"};
			default
			{
				["Bundesbeamten Shop",
					[
						["hgun_P07_snds_F","Taser Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						["arifle_sdar_F","Taser Rifle",15000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["SMG_02_F",nil,18000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_MX_F",nil,22000],
						["arifle_MXC_F",nil,24000],
						["arifle_MX_GL_F",nil,26000],
						["30Rnd_65x39_caseless_mag",nil,300],
						["30Rnd_65x39_caseless_mag_Tracer",nil,300],
						["muzzle_snds_L",nil,650],
						["muzzle_snds_H",nil,650],
						["optic_Holosight_smg",nil,1200],
						["optic_Holosight",nil,1200],
						["optic_Hamr",nil,1200],
						["acc_flashlight",nil,750],
						["SmokeShellGreen","Tränengas",100],
						["1Rnd_SmokeGreen_Grenade_shell","Tränengasgranate",250],
						["Rangefinder",nil,2000]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 4): {"Du bist keine Sondereinheit!"};
			default
			{
				["SEK Shop",
					[
						["hgun_P07_snds_F","Taser Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						["arifle_sdar_F","Taser Rifle",15000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["hgun_Pistol_heavy_01_F",nil,17500],
						["11Rnd_45ACP_Mag",nil,250],
						["SMG_02_F",nil,18000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_MX_Black_F",nil,22000],
						["arifle_MXC_Black_F",nil,22000],
						["arifle_MX_GL_Black_F",nil,25000],
						["arifle_MX_SW_Black_F",nil,25000],
						["arifle_MXM_Black_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,300],
						["30Rnd_65x39_caseless_mag_Tracer",nil,500],
						["100Rnd_65x39_caseless_mag",nil,300],
						["100Rnd_65x39_caseless_mag_Tracer",nil,500],
						["srifle_EBR_F",nil,25000],
						["20Rnd_762x51_Mag",nil,300],
						["muzzle_snds_L",nil,650],
						["muzzle_snds_H",nil,650],
						["muzzle_snds_acp",nil,750],
						["optic_Holosight_smg",nil,1200],
						["optic_Holosight",nil,1200],
						["optic_Hamr",nil,1200],
						["optic_MRD",nil,1200],
						["optic_NVS",nil,1200],
						["optic_LRPS",nil,1200],
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,750],
						["SmokeShellGreen","Tränengas",100],
						["1Rnd_SmokeGreen_Grenade_shell","Tränengasgranate",250],
						["Rangefinder",nil,2000]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_rebel): {"Du hast kein Rebellentraining!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_Mk20C_F",nil,120000],
						["arifle_TRG20_F",nil,140000],
						["arifle_TRG21_F",nil,160000],
						["arifle_Katiba_C_F",nil,180000],
						["srifle_DMR_01_F",nil,380000],
						["arifle_SDAR_F",nil,40000],
						["hgun_Rook40_F",nil,2000],
						["optic_ACO_grn",nil,3500],
						["acc_flashlight",nil,1000],
						["optic_Arco",nil,10000],
						["optic_DMS",nil,100000],
						["16Rnd_9x21_Mag",nil,25],
						["20Rnd_556x45_UW_mag",nil,450],
						["10Rnd_762x51_Mag",nil,2000],
						["30Rnd_556x45_Stanag",nil,1000],
						["30Rnd_65x39_caseless_green",nil,1200],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,1400],
						["Rangefinder",nil,2000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_gun): {"Du hast keinen Waffenschein!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["optic_Yorris",nil,1200],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"Du bist kein Donator!"};
			case (__GETC__(life_donator) == 1):
			{
				["STS Donator Shop Tier 1",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["optic_ACO_grn_smg",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["STS Donator Shop Tier 2",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["arifle_MK20C_plain_F",nil,25000],
						["optic_ACO_grn_smg",nil,750],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["30Rnd_556x45_Stanag",nil,125]
					]
				];
			};

			case (__GETC__(life_donator) >= 3):
			{
				["STS Donator Shop Tier 3",
					[
						["hgun_Rook40_F",nil,500],
						["hgun_PDW2000_F",nil,6500],
						["hgun_pistol_heavy_01_F",nil,5850],
						["arifle_Mk20C_plain_F",nil,25000],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,10000],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["FirstAidKit",nil,25],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["11Rnd_45ACP_Mag",nil,85],
						["30Rnd_556x45_Stanag",nil,125]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemCompass",nil,100],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000]
			]
		];
	};
	
	case "tankstelleGen":
	{
		["Altis Tankstelle",
			[
				["ToolKit",nil,3000],
				["FirstAidKit",nil,650]
			]
		];
	};
};