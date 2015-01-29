class Life_lotto {
	idd = 7800;
	name= "life_lotto";
	movingEnable = false;
	enableSimulation = true;
	
	class controlsBackground {
		class Life_RscTitleBackground:Life_RscText {
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.35;
			y = 0.2;
			w = 0.388;
			h = (1 / 25);
		};
		
		class MainBackground:Life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.35;
			y = 0.2 + (1 / 25);
			w = 0.388;
			h = 0.388;
		};
	};
	
	class controls {

		class Hinweis3 : Life_RscText
		{
			idc = -1;
			text = "Ein Los kostet $5500";
			SizeEx = 0.040;
			x = 0.37;
			y = 0.26;
			w = 1;
			h = (1/25);
		};
		class Hinweis4 : Life_RscText
		{
			idc = -1;
			text = "=== Versuch dein Glück ===";
			SizeEx = 0.040;
			x = 0.36;
			y = 0.30;
			w = 1;
			h = (1/25);
		};
		
		class Title : Life_RscText {
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			text = "Jackpot-Knacker 3000";
			x = 0.35;
			y = 0.2;
			w = 0.6;
			h = (1 / 25);
		};
		
		class Los : life_RscButtonMenu 
		{
			idc = -1;
			text = "Los Kaufen";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[player] spawn life_fnc_lotto";
			sizeEx = 0.02;
			x = 0.45;
			y = 0.42;
			w = (6 / 30);
			h = (1 / 25);
		};
		
		class LosAbfrage : life_RscButtonMenu 
		{
			idc = -1;
			text = "Gewinnchancen";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "hint""Jackpot: 250000$\nKlasse 2: 50000$\nKlasse 3: 25000$\nKlasse 4: 5500$\n\nGewinnchance 1:10 "";";
			sizeEx = 0.02;
			x = 0.45;
			y = 0.47;
			w = (6 / 30);
			h = (1 / 25);
		};
		
		class CloseButtonKey : Life_RscButtonMenu {
			idc = -1;
			text = "Schließen";
			onButtonClick = "closeDialog 0;";
			x = 0.36;
			y = 0.8 - (1 / 26);
			w = (6.25 / 40);
			h = (1 / 25);
		};
	};
};

