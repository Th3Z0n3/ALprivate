private["_vehicle","_refuelSleep"];
_vehicle = (vehicle player);



while{true}do
{
	if(fuel _vehicle < 0.98 and not (_vehicle isKindOf "Man")) then
	{

	//_vehicle engineOn false;
	_vehicle vehicleChat "Tanke auf...";
	sleep 3;
	_vehicle setfuel 1;
	//_vehicle engineOn true;


	//_vehicle vehicleChat "Tanke auf...";
	//sleep 5;
	//_vehicle setFuel ((Fuel _vehicle)+0.0125);
	//sleep 1
	//_vehicle vehicleChat "Aufgetankt!";
	};
	//


};


