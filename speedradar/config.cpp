
class CfgPatches 
{

	class SpeedRadar 
	{
		units[] = {
				"SpeedRadar1", "SpeedRadar2", "SpeedRadar3", "SpeedRadar4", "SpeedRadar5"
		};
		weapons[] = { };
		requiredVersion = 0.100000;
		requiredAddons[] = { };
	};
};

class CfgVehicles 
{

	class All 
	{
	};

	class Static : All
	{
	};

	class Building : Static
	{
	};

	class NonStrategic : Building
	{
	};

	class SpeedRadar1 : Building
	{
		model = "\SpeedRadar\speedradar1_v1.p3d";
		armor = 20000;
		scope = 2;
		displayName = "SpeedRadar 1";
	};

	class SpeedRadar2 : Building
	{
		model = "\SpeedRadar\speedradar2_v1.p3d";
		armor = 20000;
		scope = 2;
		displayName = "SpeedRadar 2";
	};

	class SpeedRadar3 : Building
	{
		model = "\SpeedRadar\speedradar3_v1.p3d";
		armor = 20000;
		scope = 2;
		displayName = "SpeedRadar 3";
	};

	class SpeedRadar4 : Building
	{
		model = "\SpeedRadar\speedradar4_v1.p3d";
		armor = 20000;
		scope = 2;
		displayName = "SpeedRadar 4";
	};

	class SpeedRadar5 : Building
	{
		model = "\SpeedRadar\speedradar5_v1.p3d";
		armor = 20000;
		scope = 2;
		displayName = "SpeedRadar 5 (Mobile)";
	};
};

class RscTitles 
{

	class RadarFlash 
	{
		idd = -1;
		duration = 0.100000;
		fadein = 0;
		fadeout = 0.300000;
		name = "RadarFlash";

		class controls 
		{

			class RadarFlashLight 
			{
				idc = -1;
				type = 0;
				style = 0;
				text = "";
				size = 1;
				sizeEx = 1;
				font = "puristaMedium";
				colorBackground[] = {
						1, 1, 1, 0.500000
				};
				colorText[] = {
						1, 1, 1, 1
				};
				x = "SafeZoneX";
				y = "SafeZoneY";
				w = "SafeZoneW";
				h = "SafeZoneH";
			};
		};
	};

	class RadarFlashRed 
	{
		idd = -1;
		duration = 0.100000;
		fadein = 0;
		fadeout = 0.300000;
		name = "RadarFlashRed";

		class controls 
		{

			class RadarFlashLight 
			{
				idc = -1;
				type = 0;
				style = 0;
				text = "";
				size = 1;
				sizeEx = 1;
				font = "puristaMedium";
				colorBackground[] = {
						1, 0, 0, 0.500000
				};
				colorText[] = {
						1, 1, 1, 1
				};
				x = "SafeZoneX";
				y = "SafeZoneY";
				w = "SafeZoneW";
				h = "SafeZoneH";
			};
		};
	};
};

class CfgSounds 
{
	sounds[] = { };

	class PhotoSound 
	{
		name = "PhotoSound";
		sound[] = {
				"\SpeedRadar\camera_shot.ogg", 0.501187, 1.000000
		};
		titles[] = { };
	};
};
