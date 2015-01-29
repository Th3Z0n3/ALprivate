/*
File: fn_vehicleWeightCfg.sqf
Author: Bryan "Tonic" Boardwine

Description:
Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
//Zivile Autos
case "B_Quadbike_01_F": {15};
case "C_Hatchback_01_F": {25};
case "C_Hatchback_01_sport_F": {25};
case "C_Offroad_01_F": {60};
case "B_G_Offroad_01_F": {60};
case "C_SUV_01_F": {40};

//LKWs nach Liste
case "C_Van_01_transport_F": {120};
case "C_Van_01_fuel_F": {210};
case "C_Van_01_box_F": {170};
//Zamak
case "I_Truck_02_covered_F": {275};
case "I_Truck_02_transport_F": {290};
case "I_Truck_02_ammo_F": {325};
case "I_Truck_02_medical_F": {345};
case "I_Truck_02_fuel_F": {365};
case "I_Truck_02_box_F": {390};
//Tempest
case "O_Truck_03_transport_F": {475};
case "O_Truck_03_covered_F": {490};
case "O_Truck_03_ammo_F": {545};
case "O_Truck_03_medical_F": {590};
case "O_Truck_03_fuel_F": {625};
case "O_Truck_03_repair_F": {660};
//ALAC Hemtt
case "B_Truck_01_mover_F": {60};
//Hemtt
case "B_Truck_01_transport_F": {700};
case "B_Truck_01_covered_F": {750};
case "B_Truck_01_ammo_F": {800};
case "B_Truck_01_medical_F": {850};
case "B_Truck_01_fuel_F": {900};
case "B_Truck_01_repair_F": {950};
case "B_Truck_01_box_F": {1000};

//Prestige Tempest
case "O_Truck_03_device_F": {1150};


case "B_MRAP_01_F": {65};
case "O_MRAP_02_F": {60};
case "I_MRAP_03_F": {55};

case "C_Boat_Civil_01_F": {85};
case "C_Boat_Civil_01_police_F": {85};
case "C_Boat_Civil_01_rescue_F": {85};

case "B_Heli_Light_01_F": {45};
case "B_Heli_Transport_01_F": {80};
case "I_Heli_light_03_unarmed_F": {45};
case "O_Heli_Light_02_unarmed_F": {100};
case "I_Heli_Transport_02_F": {130};

case "C_Rubberboat": {45};
case "O_Boat_Armed_01_hmg_F": {175};
case "B_Boat_Armed_01_minigun_F": {175};
case "I_Boat_Armed_01_minigun_F": {175};
//case "B_G_Boat_Transport_01_F": {45};    NICHTMEHR IM BASECODE
//case "B_Boat_Transport_01_F": {45};    NICHTMEHR IM BASECODE
case "Land_Box_AmmoOld_F": {700};
case "B_supplyCrate_F": {2600};
default {-1};
};