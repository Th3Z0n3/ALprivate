class life_admin_menu {
	idd = 2900;
	name= "life_admin_menu";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn life_fnc_adminMenu;";
	
	class controlsBackground {
		class Life_RscTitleBackground:Life_RscText {
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.1;
			y = 0.2;
			w = 0.8;
			h = (1 / 25);
		};
		
		class MainBackground:Life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.8;
			h = 0.6 - (2 / 250);
		};
	};
	
	class controls {

		
		class Title : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 2901;
			text = "STS Mini-Admin Menu";
			x = 0.1;
			y = 0.2;
			w = 0.6;
			h = (1 / 25);
		};
		
		class PlayerList_Admin : Life_RscListBox 
		{
			idc = 2902;
			text = "";
			sizeEx = 0.035;
			//colorBackground[] = {0,0,0,0};
			onLBSelChanged = "[_this] spawn life_fnc_adminQuery";
			
			x = 0.12; y = 0.26;
			w = 0.30; h = 0.4;
		};
		
		class PlayerBInfo : Life_RscStructuredText
		{
			idc = 2903;
			text = "";
			x = 0.42;
			y = 0.25;
			w = 0.35;
			h = 0.6;
		};
		class textEdit : Life_RscEdit {
		
			idc = 5904;
		
			text = "";
			sizeEx = 0.030;
			x = 0.12; y = 0.7;
			w = 0.3; h = 0.03;
		
		};

		class CloseButtonKey : Life_RscButtonMenu {
			idc = -1;
			text = "Close";
			onButtonClick = "closeDialog 0;";
			x = -0.06 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.88 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		class AdminID : Life_RscButtonMenu {
			idc = -1;
			text = "Get ID";
			onButtonClick = "[] call life_fnc_admingetID;";
			x = 0.1 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.88 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		class MarketView : Life_RscButtonMenu {
			idc = -1;
			text = "MarktView";
			onButtonClick = "[] call life_fnc_openMarketView;";
			x = 0.26 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.88 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		class MarketReset : Life_RscButtonMenu {
			idc = -1;
			text = "MarktReset";
			onButtonClick = "[] call life_fnc_marketReset;";
			x = 0.26 + (6.25 / 19.8) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.88 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		class TeleportToHim : Life_RscButtonMenu {
			idc = 2030;
			text = "TP zu ihm";
			onButtonClick = "[] call life_fnc_admintp;";
			x = 0.58 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.98 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};

		class MapTeleport : Life_RscButtonMenu {
			idc = 2070;
			text = "TP via Map";
			onButtonClick = "[] spawn life_fnc_admintpmap;closeDialog 0;";
			x = 0.58 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.88 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};

		class TeleportToMe : Life_RscButtonMenu {
			idc = 2060;
			text = "TP zu mir";
			onButtonClick = "[] spawn life_fnc_admintptome;";
			x = 0.58 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.93 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		class ButtonGodmode : Life_RscButtonMenu {
			idc =2023;
			text = "FixVehicle";
			onButtonClick = "closeDialog 0; [] execVM ""core\admin\fixmyride.sqf"";";
			x = 0.58 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 1.03 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
	};
};