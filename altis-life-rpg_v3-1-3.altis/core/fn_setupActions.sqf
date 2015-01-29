#include <macro.h>
/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
    case west:
    {
        //search house
        life_actions = life_actions + [player addAction["<t color='#FFFF00'>Hausbesitzer prüfen</t>",life_fnc_houseOwnerSearch,cursorTarget,5,false,false,"",
        ' !isNull cursorTarget && (player distance cursorTarget) < 10 && speed cursorTarget < 2 && (cursorTarget isKindOf "Land_i_House_Small_01_V1_F" || cursorTarget isKindOf "Land_i_House_Small_01_V2_F" || cursorTarget isKindOf "Land_i_House_Small_01_V3_F" || cursorTarget isKindOf "Land_i_House_Small_02_V1_F" || cursorTarget isKindOf "Land_i_House_Small_02_V2_F" || cursorTarget isKindOf "Land_i_House_Small_02_V3_F" || cursorTarget isKindOf "Land_i_House_Small_03_V1_F" || cursorTarget isKindOf "Land_i_House_Big_01_V1_F" || cursorTarget isKindOf "Land_i_House_Big_01_V2_F" || cursorTarget isKindOf "Land_i_House_Big_01_V3_F" || cursorTarget isKindOf "Land_i_House_Big_02_V1_F" || cursorTarget isKindOf "Land_i_House_Big_02_V2_F" || cursorTarget isKindOf "Land_i_House_Big_02_V3_F") && !life_action_inUse']];
        life_actions = life_actions + [player addAction["<t color='#FF0000'>Haus durchsuchen</t>",life_fnc_raidHouse,cursorTarget,5,false,false,"",
        ' !isNull cursorTarget && (player distance cursorTarget) < 10 && speed cursorTarget < 2 && (count (cursorTarget getVariable ["life_homeOwners", []]) > 0) && (cursorTarget isKindOf "Land_i_House_Small_01_V1_F" || cursorTarget isKindOf "Land_i_House_Small_01_V2_F" || cursorTarget isKindOf "Land_i_House_Small_01_V3_F" || cursorTarget isKindOf "Land_i_House_Small_02_V1_F" || cursorTarget isKindOf "Land_i_House_Small_02_V2_F" || cursorTarget isKindOf "Land_i_House_Small_02_V3_F" || cursorTarget isKindOf "Land_i_House_Small_03_V1_F" || cursorTarget isKindOf "Land_i_House_Big_01_V1_F" || cursorTarget isKindOf "Land_i_House_Big_01_V2_F" || cursorTarget isKindOf "Land_i_House_Big_01_V3_F" || cursorTarget isKindOf "Land_i_House_Big_02_V1_F" || cursorTarget isKindOf "Land_i_House_Big_02_V2_F" || cursorTarget isKindOf "Land_i_House_Big_02_V3_F") && !life_action_inUse']];     
        life_actions = life_actions + [player addAction["<t color='#FFFF00'>Hausinventar durchsuchen</t>",life_fnc_houseInvSearch,cursorTarget,5,false,false,"",
        ' !isNull cursorTarget && (player distance cursorTarget) < 5 && speed cursorTarget < 2 && (cursorTarget getVariable ["life_locked", 1] == 0) && (cursorTarget isKindOf "Land_i_House_Small_01_V1_F" || cursorTarget isKindOf "Land_i_House_Small_01_V2_F" || cursorTarget isKindOf "Land_i_House_Small_01_V3_F" || cursorTarget isKindOf "Land_i_House_Small_02_V1_F" || cursorTarget isKindOf "Land_i_House_Small_02_V2_F" || cursorTarget isKindOf "Land_i_House_Small_02_V3_F" || cursorTarget isKindOf "Land_i_House_Small_03_V1_F" || cursorTarget isKindOf "Land_i_House_Big_01_V1_F" || cursorTarget isKindOf "Land_i_House_Big_01_V2_F" || cursorTarget isKindOf "Land_i_House_Big_01_V3_F" || cursorTarget isKindOf "Land_i_House_Big_02_V1_F" || cursorTarget isKindOf "Land_i_House_Big_02_V2_F" || cursorTarget isKindOf "Land_i_House_Big_02_V3_F") && !life_action_inUse']];
		//Objekte beschlagnahmen
		life_actions = life_actions + [player addAction["Gegenstände beschlagnahmen",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'count(nearestObjects [player,["weaponholder"],3])>0']];
		//Fahrlizenz entziehen
		// life_actions = life_actions + [player addAction["Fahrlizenzen entziehen",life_fnc_removeDriverLicense,"",0,false,false,"",'
		//!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget != west) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && (cursorTarget getVariable "restrained") ']];
	};
    case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction["Fischernetz auswerfen",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		
		//Rob person
		life_actions = life_actions + [player addAction["Person ausrauben",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && (animationState cursorTarget == "Incapacitated" or animationState cursorTarget == "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon") && !(cursorTarget getVariable["robbed",FALSE]) ']];
		
		///// Rebellen Actions /////
		if(license_civ_rebel && playerSide == civilian) then {
		//Fesseln
		life_actions = [player addAction["Fesseln",life_fnc_restrainAction2,cursorTarget,9999999,false,false,"",' 
		!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (animationState cursorTarget == "Incapacitated" or animationState cursorTarget == "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon") && alive cursorTarget && cursorTarget distance player < 5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1 ']];
		//Fesseln lösen
		life_actions = life_actions + [player addAction["Fesseln lösen",life_fnc_unrestrain2,cursorTarget,0,false,false,"",
		' !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && animationState cursorTarget == "AmovPercMstpSnonWnonDnon_Ease" && player distance cursorTarget < 3 && (cursorTarget getVariable "restrained") && !(cursorTarget getVariable "Escorting") ']];
		
		//Abführen
		life_actions = life_actions + [player addAction["Abführen",life_fnc_escortAction2,cursorTarget,0,false,false,"",'
		!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 5 && (cursorTarget getVariable "restrained") && !(cursorTarget getVariable "Escorting") ']];
		//Abführen stoppen
		life_actions = life_actions + [player addAction["Abführen stoppen",life_fnc_stopEscorting2,cursorTarget,0,false,false,"",
		' !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && animationState cursorTarget == "AmovPercMstpSnonWnonDnon_Ease" && player distance cursorTarget < 3.5 && (cursorTarget getVariable "Escorting") ']];
		
		//Ins Auto setzen
		life_actions = life_actions + [player addAction["In Fahrzeug setzen",life_fnc_putInCar2,cursorTarget,0,false,false,"",
		' !isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Car" && ((((position player) nearEntities [["Man"],5]) select 0) getVariable "Escorting")' ]];
		life_actions = life_actions + [player addAction["In Fahrzeug setzen",life_fnc_putInCar2,_unit,0,false,false,"",
		' !isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Air"' ]];
		life_actions = life_actions + [player addAction["In Fahrzeug setzen",life_fnc_putInCar2,_unit,0,false,false,"",
		' !isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Ship"' ]];
		//Aus dem Auto ziehen
		life_actions = life_actions + [player addAction["Aus Fahrzeug ziehen",life_fnc_pulloutAction2,cursorTarget,0,false,false,"",
		' !isNull cursorTarget && (player distance cursorTarget) < 4 && (count crew cursorTarget) > 0 && speed cursorTarget < 2 && cursorTarget isKindOF "Car"']];
		life_actions = life_actions + [player addAction["Aus Fahrzeug ziehen",life_fnc_pulloutAction2,cursorTarget,0,false,false,"",
		' !isNull cursorTarget && (player distance cursorTarget) < 4 && (count crew cursorTarget) > 0 && speed cursorTarget < 2 && cursorTarget isKindOf "Ship"']];
		life_actions = life_actions + [player addAction["Aus Fahrzeug ziehen",life_fnc_pulloutAction2,cursorTarget,0,false,false,"",
		' !isNull cursorTarget && (player distance cursorTarget) < 4 && (count crew cursorTarget) > 0 && speed cursorTarget < 2 && cursorTarget isKindOf "Air"']];
		};
		
		//Suicide Vest
		//life_actions = life_actions + [player addAction["Selbstmordweste aktivieren",life_fnc_suicideBomb,"",0,false,false,"",' vest player == "V_HarnessOGL_brn" && alive player && playerSide == civilian && !life_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];
		
		//Houses
        life_actions = life_actions + [player addAction["<t color='#FF0000'>Haus öffnen/schliessen</t>",life_fnc_lockHouse,cursorTarget,10,false,false,"",
        '!isNull cursorTarget && (player distance cursorTarget) < 20 && cursorTarget isKindOf "House" && license_civ_home && __GETC__(life_donator) >= __GETC__(HOUSING_DONATOR_LEVEL) && (getPlayerUID player) in (cursorTarget getVariable["life_homeOwners", []])']];
        life_actions = life_actions + [player addAction["<t color='#FFFF00'>Lagerraum öffnen/schliessen</t>",life_fnc_lockStorage,cursorTarget,10,false,false,"",
        '!isNull cursorTarget && (player distance cursorTarget) < 20 && cursorTarget isKindOf "House" && license_civ_home && __GETC__(life_donator) >= __GETC__(HOUSING_DONATOR_LEVEL) && (getPlayerUID player) in (cursorTarget getVariable["life_homeOwners", []])']];
        life_actions = life_actions + [player addAction["<t color='#00FF00'>Hausmenü</t>",life_fnc_houseMenu,cursorTarget,10,false,false,"",
        '!isNull cursorTarget && (player distance cursorTarget) < 20 && cursorTarget isKindOf "House" && ([typeOf cursorTarget] call life_fnc_housePrice) > -1 && !(([cursorTarget] call life_fnc_getBuildID) in life_public_houses)']];
        life_actions = life_actions + [player addAction["Lagerraum",life_fnc_openStorage,cursorTarget,10,false,false,"",
        ' !isNull cursorTarget && (player distance cursorTarget) < 6 && cursorTarget isKindOf "House"  && speed cursorTarget < 2 && (count (cursorTarget getVariable["containers", []]) > 0) && license_civ_home && __GETC__(life_donator) >= __GETC__(HOUSING_DONATOR_LEVEL) && ((getPlayerUID player) in (cursorTarget getVariable["life_homeOwners", []]) || ((cursorTarget getVariable["storage_locked", 1]) == 0))']];// || !(cursorTarget getVariable["life_locked", true])
        life_actions = life_actions + [player addAction["Garage",life_fnc_vehicleGarage,"car",0,false,false,"",
        ' !isNull cursorTarget && (player distance cursorTarget) < 20 && cursorTarget isKindOf "House" && license_civ_home && __GETC__(life_donator) >= __GETC__(HOUSING_DONATOR_LEVEL) && (typeOf cursorTarget == "Land_i_Garage_V1_F" || typeOf cursorTarget == "Land_i_Garage_V2_F" || typeOf cursorTarget == "Land_i_Garage_V1_dam_F") && (((getPlayerUID player) in (cursorTarget getVariable["life_homeOwners", []])) || ((cursorTarget getVariable["life_locked", 1]) == 0)) ']];
        life_actions = life_actions + [player addAction["Auto parken",life_fnc_storeVehicle,"""",0,false,false,"""",
        ' !life_garage_store && !isNull cursorTarget && (player distance cursorTarget) < 20 && license_civ_home && __GETC__(life_donator) >= __GETC__(HOUSING_DONATOR_LEVEL) && cursorTarget isKindOf "House" && (typeOf cursorTarget == "Land_i_Garage_V1_F" || typeOf cursorTarget == "Land_i_Garage_V2_F" || typeOf cursorTarget == "Land_i_Garage_V1_dam_F") && (((getPlayerUID player) in (cursorTarget getVariable["life_homeOwners", []])) || (cursorTarget getVariable["life_locked", 1]) == 0) ']];
		
		//Ölbohrung mit Truck
		life_actions = life_actions + [player addAction["Nach Öl bohren",life_fnc_gatherOilWithTruck,"",0,false,false,"",'
		!life_action_gather && ((player distance (getMarkerPos "oil_1") < 40) OR (player distance (getMarkerPos "oil_2") < 20)) && ((vehicle player isKindOf "C_Van_01_fuel_F") OR (vehicle player isKindOf "I_Truck_02_fuel_F") OR (vehicle player isKindOf "O_Truck_03_fuel_F") OR (vehicle player isKindOf "B_Truck_01_fuel_F") && (driver (vehicle player) == player)) && (life_carryWeight + (["oilu"] call life_fnc_itemWeight)) <= life_maxWeight ']];
	};
};