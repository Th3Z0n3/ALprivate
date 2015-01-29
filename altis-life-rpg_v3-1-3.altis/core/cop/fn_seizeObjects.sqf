/*
	File: fn_seizeWeapon.sqf
	Author: Skalicon
	
	Description:

*/
private["_price"];
_price = 350;
_clear = nearestObjects [player,["weaponholder"],3];
_destroyed = 0;
for "_i" from 0 to count _clear - 1 
do
{
	_destroyed = _destroyed + 1;
	deleteVehicle (_clear select _i);
	sleep 0.056;
};

titleText[format["%1 Gegenstände beschlagnahmt.", _destroyed],"PLAIN"];
[[51, player, format["%1 Gegenstände beschlagnahmt.", _destroyed]],"TON_fnc_logIt",false,false] spawn life_fnc_MP;
sleep 2;
hint format["Für die Beschlagnahmung von Gegenständen erhälst du 350$."];
life_atmcash = life_atmcash + _price;