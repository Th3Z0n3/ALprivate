#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "civ_car_1":
	{
		_return = 
		[
			["B_Quadbike_01_F",1600],
			["C_Hatchback_01_F",3600],
			["C_Hatchback_01_sport_F",56000],
			["C_Offroad_01_F",6400],
			["C_SUV_01_F",5200]
		];
	}; 
	
	case "civ_car_2":
	{
		_return = 
		[
			["B_Quadbike_01_F",1600],
			["C_Hatchback_01_F",3600],
			["C_Hatchback_01_sport_F",56000],
			["C_Offroad_01_F",6400],
			["C_SUV_01_F",5200]
		];
	};
	
	case "civ_car_3":
	{
		_return = 
		[
			["B_Quadbike_01_F",1600],
			["C_Hatchback_01_F",3600],
			["C_Hatchback_01_sport_F",56000],
			["C_Offroad_01_F",6400],
			["C_SUV_01_F",5200]
		];
	}; 
	
	case "civ_car_4":
	{
		_return = 
		[
			["B_Quadbike_01_F",1600],
			["C_Hatchback_01_F",3600],
			["C_Hatchback_01_sport_F",56000],
			["C_Offroad_01_F",6400],
			["C_SUV_01_F",5200]
		];
	};
	
	case "civ_car_rent_1":
	{
		_return = 
		[
			["B_Quadbike_01_F",1600],
			["C_Hatchback_01_F",3600],
			["C_Hatchback_01_sport_F",56000],
			["C_Offroad_01_F",6400],
			["C_SUV_01_F",5200]
		];
	};
	
	case "civ_car_rent_2":
	{
		_return = 
		[
			["B_Quadbike_01_F",1600],
			["C_Hatchback_01_F",3600],
			["C_Hatchback_01_sport_F",56000],
			["C_Offroad_01_F",6400],
			["C_SUV_01_F",5200]
		];
	};
	
	case "civ_car_rent_3":
	{
		_return = 
		[
			["B_Quadbike_01_F",1600],
			["C_Hatchback_01_F",3600],
			["C_Hatchback_01_sport_F",56000],
			["C_Offroad_01_F",6400],
			["C_SUV_01_F",5200]
		];
	};
	
	case "civ_car_rent_4":
	{
		_return = 
		[
			["B_Quadbike_01_F",1600],
			["C_Hatchback_01_F",3600],
			["C_Hatchback_01_sport_F",56000],
			["C_Offroad_01_F",6400],
			["C_SUV_01_F",5200]
		];
	};
	
	case "civ_heli_rent_1":
	{
		_return = 
		[
			["B_Heli_Light_01_F",225000],
			["O_Heli_Light_02_unarmed_F",450000],
			["I_Heli_Transport_02_F",900000]
		];
	};
	
	case "civ_heli_rent_2":
	{
		_return = 
		[
			["B_Heli_Light_01_F",225000],
			["O_Heli_Light_02_unarmed_F",450000],
			["I_Heli_Transport_02_F",900000]
		];
	};
	
	case "civ_heli_rent_3":
	{
		_return = 
		[
			["B_Heli_Light_01_F",225000],
			["O_Heli_Light_02_unarmed_F",450000],
			["I_Heli_Transport_02_F",900000]
		];
	};
	
	case "donator_1":
	{
		_return =
		[
			["B_Quadbike_01_F",500],
			["C_Offroad_01_F",2500],
			["C_SUV_01_F",20000]
		];

		if(__GETC__(life_donator) > 1) then
		{
			_return set[count _return,["C_Van_01_Fuel_F",7500]];
			_return set[count _return,["B_Truck_01_box_F",250000]];
			_return set[count _return,["B_Heli_Light_01_F",200000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",600000]];
		};
		if(__GETC__(life_donator) > 2) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",10000]];
			_return set[count _return,["I_Heli_Transport_02_F",1200000]];
		};
	};
	
	case "donator_2":
	{
		_return =
		[
			["B_Quadbike_01_F",500],
			["C_Offroad_01_F",2500],
			["C_SUV_01_F",20000]
		];

		if(__GETC__(life_donator) > 1) then
		{
			_return set[count _return,["C_Van_01_Fuel_F",7500]];
			_return set[count _return,["B_Truck_01_box_F",250000]];
			_return set[count _return,["B_Heli_Light_01_F",200000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",600000]];
		};
		if(__GETC__(life_donator) > 2) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",10000]];
			_return set[count _return,["I_Heli_Transport_02_F",1200000]];
		};
	};
			
	case "civ_servt_1":
	{
		_return =
		[
			["C_Offroad_01_F",15000] //Service Truck
		];
	};
	
	case "civ_truck_1":
	{
		_return =
		[
			["C_Van_01_transport_F",48000],
			["C_Van_01_fuel_F",54000],
			["C_Van_01_box_F",60000],
			["I_Truck_02_covered_F",68000], 
			["I_Truck_02_transport_F",76000], 
			["I_Truck_02_ammo_F",86000],  
			["I_Truck_02_medical_F",96000],  
			["I_Truck_02_fuel_F",108000], 
			["I_Truck_02_box_F",120000], 
			["O_Truck_03_transport_F",134000],
			["O_Truck_03_covered_F",150000], 
			["O_Truck_03_ammo_F",168000],  
			["O_Truck_03_medical_F",188000],  
			["O_Truck_03_fuel_F",210000], 
			["O_Truck_03_repair_F",236000],
			//["B_Truck_01_mover_F",264000],
			["B_Truck_01_transport_F",264000],
			["B_Truck_01_covered_F",296000], 
			["B_Truck_01_ammo_F",332000], 
			["B_Truck_01_medical_F",372000],  
			["B_Truck_01_fuel_F",416000], 
			//["B_Truck_01_Repair_F",466000],  
			["B_Truck_01_box_F",522000],
			["O_Truck_03_device_F",584000]
		];	
	};
	
	case "civ_truck_2":
	{
		_return =
		[
			["C_Van_01_transport_F",48000],
			["C_Van_01_fuel_F",54000],
			["C_Van_01_box_F",60000],
			["I_Truck_02_covered_F",68000], 
			["I_Truck_02_transport_F",76000], 
			["I_Truck_02_ammo_F",86000],  
			["I_Truck_02_medical_F",96000],  
			["I_Truck_02_fuel_F",108000], 
			["I_Truck_02_box_F",120000], 
			["O_Truck_03_transport_F",134000],
			["O_Truck_03_covered_F",150000], 
			["O_Truck_03_ammo_F",168000],  
			["O_Truck_03_medical_F",188000],  
			["O_Truck_03_fuel_F",210000], 
			["O_Truck_03_repair_F",236000],
			//["B_Truck_01_mover_F",264000],
			["B_Truck_01_transport_F",264000],
			["B_Truck_01_covered_F",296000], 
			["B_Truck_01_ammo_F",332000], 
			["B_Truck_01_medical_F",372000],  
			["B_Truck_01_fuel_F",416000], 
			//["B_Truck_01_Repair_F",466000],  
			["B_Truck_01_box_F",522000],
			["O_Truck_03_device_F",584000]
		];	
	};
	
	case "civ_truck_rent_1":
	{
		_return =
		[
			["C_Van_01_transport_F",48000],
			["C_Van_01_fuel_F",54000],
			["C_Van_01_box_F",60000],
			["I_Truck_02_covered_F",68000], 
			["I_Truck_02_transport_F",76000], 
			["I_Truck_02_ammo_F",86000],  
			["I_Truck_02_medical_F",96000],  
			["I_Truck_02_fuel_F",108000], 
			["I_Truck_02_box_F",120000], 
			["O_Truck_03_transport_F",134000],
			["O_Truck_03_covered_F",150000], 
			["O_Truck_03_ammo_F",168000],  
			["O_Truck_03_medical_F",188000],  
			["O_Truck_03_fuel_F",210000], 
			["O_Truck_03_repair_F",236000],
			//["B_Truck_01_mover_F",264000],
			["B_Truck_01_transport_F",264000],
			["B_Truck_01_covered_F",296000], 
			["B_Truck_01_ammo_F",332000], 
			["B_Truck_01_medical_F",372000],  
			["B_Truck_01_fuel_F",416000], 
			//["B_Truck_01_Repair_F",466000],  
			["B_Truck_01_box_F",522000],
			["O_Truck_03_device_F",584000]
		];	
	};
	
	case "civ_truck_rent_2":
	{
		_return =
		[
			["C_Van_01_transport_F",48000],
			["C_Van_01_fuel_F",54000],
			["C_Van_01_box_F",60000],
			["I_Truck_02_covered_F",68000], 
			["I_Truck_02_transport_F",76000], 
			["I_Truck_02_ammo_F",86000],  
			["I_Truck_02_medical_F",96000],  
			["I_Truck_02_fuel_F",108000], 
			["I_Truck_02_box_F",120000], 
			["O_Truck_03_transport_F",134000],
			["O_Truck_03_covered_F",150000], 
			["O_Truck_03_ammo_F",168000],  
			["O_Truck_03_medical_F",188000],  
			["O_Truck_03_fuel_F",210000], 
			["O_Truck_03_repair_F",236000],
			//["B_Truck_01_mover_F",264000],
			["B_Truck_01_transport_F",264000],
			["B_Truck_01_covered_F",296000], 
			["B_Truck_01_ammo_F",332000], 
			["B_Truck_01_medical_F",372000],  
			["B_Truck_01_fuel_F",416000], 
			//["B_Truck_01_Repair_F",466000],  
			["B_Truck_01_box_F",522000],
			["O_Truck_03_device_F",584000]
		];	
	};
	
	case "civ_truck_rent_3":
	{
		_return =
		[
			["C_Van_01_transport_F",48000],
			["C_Van_01_fuel_F",54000],
			["C_Van_01_box_F",60000],
			["I_Truck_02_covered_F",68000], 
			["I_Truck_02_transport_F",76000], 
			["I_Truck_02_ammo_F",86000],  
			["I_Truck_02_medical_F",96000],  
			["I_Truck_02_fuel_F",108000], 
			["I_Truck_02_box_F",120000], 
			["O_Truck_03_transport_F",134000],
			["O_Truck_03_covered_F",150000], 
			["O_Truck_03_ammo_F",168000],  
			["O_Truck_03_medical_F",188000],  
			["O_Truck_03_fuel_F",210000], 
			["O_Truck_03_repair_F",236000],
			//["B_Truck_01_mover_F",264000],
			["B_Truck_01_transport_F",264000],
			["B_Truck_01_covered_F",296000], 
			["B_Truck_01_ammo_F",332000], 
			["B_Truck_01_medical_F",372000],  
			["B_Truck_01_fuel_F",416000], 
			//["B_Truck_01_Repair_F",466000],  
			["B_Truck_01_box_F",522000],
			["O_Truck_03_device_F",584000]
		];	
	};
	
	case "reb_v_1":
	{
		_return =
		[
			["B_Quadbike_01_F",1600],
			["B_G_Offroad_01_F",6400],
			["C_SUV_01_F",5200],
			["O_MRAP_02_F",543478],
			["B_Heli_Light_01_F",225000],
			["O_Heli_Light_02_unarmed_F",450000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",465000]];
		};
	};
	
	case "reb_v_2":
	{
		_return =
		[
			["B_Quadbike_01_F",1600],
			["B_G_Offroad_01_F",6400],
			["C_SUV_01_F",5200],
			["O_MRAP_02_F",543478],
			["B_Heli_Light_01_F",225000],
			["O_Heli_Light_02_unarmed_F",450000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",465000]];
		};
	};
			
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",1600],
			["B_G_Offroad_01_F",6400],
			["C_SUV_01_F",5200],
			["O_MRAP_02_F",543478],
			["B_Heli_Light_01_F",225000],
			["O_Heli_Light_02_unarmed_F",450000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",465000]];
		};
	};
	
	case "reb_car2":
	{
		_return =
		[
			["B_Quadbike_01_F",1600],
			["B_G_Offroad_01_F",6400],
			["C_SUV_01_F",5200],
			["O_MRAP_02_F",543478],
			["B_Heli_Light_01_F",225000],
			["O_Heli_Light_02_unarmed_F",450000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",465000]];
		};
	};
	
	case "reb_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",275000]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",450000]];
	};
	
	case "cop_car_1":
	{
		_return set[count _return,
		["C_Offroad_01_F",6400]];
		_return set[count _return,
		["C_Hatchback_01_sport_F",56000]];
		_return set[count _return,
		["C_SUV_01_F",5200]];
		if(__GETC__(life_coplevel) > 2) then {
			_return set[count _return,
			["B_MRAP_01_F",26000]];
		};
		if(__GETC__(life_coplevel) > 3) then {
			_return set[count _return,
			["B_MRAP_01_hmg_F",26000]];
		};
		if(__GETC__(life_coplevel) > 4) then {
			_return set[count _return,
			["I_MRAP_03_F",26000]];
		};
	};
	
	case "cop_car_2":
	{
		_return set[count _return,
		["C_Offroad_01_F",6400]];
		_return set[count _return,
		["C_Hatchback_01_sport_F",56000]];
		_return set[count _return,
		["C_SUV_01_F",5200]];
		if(__GETC__(life_coplevel) > 2) then {
			_return set[count _return,
			["B_MRAP_01_F",26000]];
		};
		if(__GETC__(life_coplevel) > 3) then {
			_return set[count _return,
			["B_MRAP_01_hmg_F",26000]];
		};
		if(__GETC__(life_coplevel) > 4) then {
			_return set[count _return,
			["I_MRAP_03_F",26000]];
		};
	};
	
	case "cop_car_3":
	{
		_return set[count _return,
		["C_Offroad_01_F",6400]];
		_return set[count _return,
		["C_Hatchback_01_sport_F",56000]];
		_return set[count _return,
		["C_SUV_01_F",5200]];
		if(__GETC__(life_coplevel) > 2) then {
			_return set[count _return,
			["B_MRAP_01_F",26000]];
		};
		if(__GETC__(life_coplevel) > 3) then {
			_return set[count _return,
			["B_MRAP_01_hmg_F",26000]];
		};
		if(__GETC__(life_coplevel) > 4) then {
			_return set[count _return,
			["I_MRAP_03_F",26000]];
		};
	};
	
	case "cop_car_4":
	{
		_return set[count _return,
		["C_Offroad_01_F",6400]];
		_return set[count _return,
		["C_Hatchback_01_sport_F",56000]];
		_return set[count _return,
		["C_SUV_01_F",5200]];
		if(__GETC__(life_coplevel) > 2) then {
			_return set[count _return,
			["B_MRAP_01_F",26000]];
		};
		if(__GETC__(life_coplevel) > 3) then {
			_return set[count _return,
			["B_MRAP_01_hmg_F",26000]];
		};
		if(__GETC__(life_coplevel) > 4) then {
			_return set[count _return,
			["I_MRAP_03_F",26000]];
		};
	};
	
	case "cop_car_5":
	{
		_return set[count _return,
		["C_Offroad_01_F",6400]];
		_return set[count _return,
		["C_Hatchback_01_sport_F",56000]];
		_return set[count _return,
		["C_SUV_01_F",5200]];
		if(__GETC__(life_coplevel) > 2) then {
			_return set[count _return,
			["B_MRAP_01_F",26000]];
		};
		if(__GETC__(life_coplevel) > 3) then {
			_return set[count _return,
			["B_MRAP_01_hmg_F",26000]];
		};
		if(__GETC__(life_coplevel) > 4) then {
			_return set[count _return,
			["I_MRAP_03_F",26000]];
		};
	};
	
	case "fed_car":
	{
		_return set[count _return,
		["B_Quadbike_01_F",0]];
		_return set[count _return,
		["C_Offroad_01_F",0]];
		_return set[count _return,
		["B_MRAP_01_F",0]];
		_return set[count _return,
		["I_MRAP_03_F",0]];
		_return set[count _return,
		["I_Truck_02_covered_F",0]];
		_return set[count _return,
		["I_Truck_02_transport_F",0]];
		_return set[count _return,
		["B_Truck_01_covered_F",0]];
		_return set[count _return,
		["B_Truck_01_transport_F",0]];
	};
	
	case "fed_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",0]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",0]];
		_return set[count _return,
		["B_Heli_Transport_01_F",0]];
		_return set[count _return,
		["I_Heli_Transport_02_F",0]];
	};
	
	case "civ_air_1":
	{
		_return =
		[
			["B_Heli_Light_01_F",225000],
			["O_Heli_Light_02_unarmed_F",450000],
			["I_Heli_Transport_02_F",900000]
		];
	};
	
	case "civ_air_2":
	{
		_return =
		[
			["B_Heli_Light_01_F",225000],
			["O_Heli_Light_02_unarmed_F",450000],
			["I_Heli_Transport_02_F",900000]
		];
	};
	
	case "cop_air_1":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",45000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",65000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_Heli_Light_01_armed_F",45000]];
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",85000]];
			_return set[count _return,
			["I_Heli_Transport_02_F",900000]];
		};
	};
	
	case "cop_air_2":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",45000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",65000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_Heli_Light_01_armed_F",45000]];
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",85000]];
			_return set[count _return,
			["I_Heli_Transport_02_F",900000]];
		};
	}; 
	
	case "civ_ship_1":
	{
		_return =
		[
			["C_Rubberboat",18000],
			["C_Boat_Civil_01_F",34000]
		];
	};
	
	case "civ_ship_2":
	{
		_return =
		[
			["C_Rubberboat",18000],
			["C_Boat_Civil_01_F",34000]
		];
	};
	
	case "civ_ship_3":
	{
		_return =
		[
			["C_Rubberboat",18000],
			["C_Boat_Civil_01_F",34000]
		];
	};
	
	case "civ_ship_4":
	{
		_return =
		[
			["C_Rubberboat",18000],
			["C_Boat_Civil_01_F",34000]
		];
	};
	
	case "civ_ship_5":
	{
		_return =
		[
			["C_Rubberboat",18000],
			["C_Boat_Civil_01_F",34000]
		];
	};
	
	case "civ_ship_6":
	{
		_return =
		[
			["C_Rubberboat",18000],
			["C_Boat_Civil_01_F",34000]
		];
	};
	
	case "cop_ship_1":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["B_Boat_Transport_01_F",18000]];
			_return set[count _return,
			["C_Boat_Civil_01_police_F",34000]];
			_return set[count _return,
			["C_Boat_Civil_01_rescue_F",34000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Boat_Armed_01_minigun_F",70000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["O_Boat_Armed_01_hmg_F",70000]];
			_return set[count _return,
			["B_SDV_01_F",100000]];
		};
	};
	
	case "donator_heli":
	{
		_return =
		[
			["B_Heli_Light_01_F",100000],
			["O_Heli_Light_02_unarmed_F",175000],
			["I_Heli_Transport_02_F",650000]
		];
	};
	
	case "donator_car":
	{
		_return =
		[
			["B_Quadbike_01_F",500],
			["C_Offroad_01_F",2500],
			["C_Hatchback_01_sport_F",10000],
			["C_SUV_01_F",20000],
			["C_Van_01_fuel_F",7500]
		];
	};
};

_return;
