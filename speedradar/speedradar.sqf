//##############################################################################
//# \SpeedRadar\speedradar.sqf
//# First Revision by: Florian Mueller
//# Creation Date: 27.12.2013
//# Edit by: Taiwendo
//# This Script initializes the given speed radar object.
//# Parameters:
//#  - The Object
//#  - The Street heading
//#  - The Maximum Speed at this point in km/h
//#  - The function to call on a flashed guy. Params there: unit, unitspeed, allowedSpeed
//##############################################################################

#define     RADAR_TRACK_RADIUS      25
#define     HEADING_TOLERANCE       30

if (!isServer) exitWith {};
diag_log "Initializing SpeedRadar";
disableSerialization;

private ["_radar","_autoheading","_streetheading","_maxspeed","_callback","_pos","_entities","_vehicle","_role","_dude","_speed","_heading","_min","_max","_zerowrap","_hitsrange","_PX","_PY","_PZ","_rXY","_rXZ","_scalar"];

_radar = _this select 0;
_streetheading = round (_this select 1);
if (_streetheading == -1) then {
    _streetheading = getDir _radar;
    _autoheading = true;
}
else {
    _autoheading = false;
};

_maxspeed = round (_this select 2);
_callback = _this select 3;

if (_streetheading < 0 or _streetheading > 359) exitWith { hint "Heading out of range"; false };
if (_maxspeed < 1) exitWith { hint "Maxspeed out of range"; false };
if (typeName _callback != "CODE") exitWith { hint "Callback is not code. Enter {} or a function name"; false };
if (HEADING_TOLERANCE > 180) exitWith { hint "Heading tolerance out of range"; false };

_zerowrap = false;
_min = _streetheading - HEADING_TOLERANCE;
if (_min < 0) then {
    _min = _min + 360;
    _zerowrap = true;
};
_max = _streetheading + HEADING_TOLERANCE;
if (_max > 359) then {
    _max = _max - 360;
    _zerowrap = true;
};

while {true} do {
    waitUntil {count ((getPosAtl _radar) nearEntities RADAR_TRACK_RADIUS) > 0};
    _pos = getPosATL _radar;
    _entities = _pos nearEntities RADAR_TRACK_RADIUS;
    if (count _entities > 0) then {
        {
            _vehicle = assignedVehicle _x;
            if not (isNull _vehicle) then { //player is in a vehicle
                //current guy is _x
                //check if _x is the driver
                _role = assignedVehicleRole _x;
                if (count _role > 0) then {
                    if ((_role select 0) != "Driver") then {
                        _dude = assignedDriver _vehicle;
                    }
                    else {
                        _dude = _x;
                    };
                    _speed = speed _vehicle;
                    if (round (_speed) > _maxspeed) then {
                        //speed too high! check heading
                        _heading = round (getDir _vehicle);
                        while {_heading > 359} do {
                            _heading = _heading - 360;
                        };
                        _hitsrange = false;
                        if (_autoheading) then {
                            _streetheading = getDir _radar;
                            _zerowrap = false;
                            _min = _streetheading - HEADING_TOLERANCE;
                            if (_min < 0) then {
                                _min = _min + 360;
                                _zerowrap = true;
                            };
                            _max = _streetheading + HEADING_TOLERANCE;
                            if (_max > 359) then {
                                _max = _max - 360;
                                _zerowrap = true;
                            };
                        };
                        if (_zerowrap) then {
                            if ((_heading >= _min) or (_heading <= _max)) then {
                                _hitsrange = true;
                            };
                        }
                        else {
                            if ((_heading >= _min) and (_heading <= _max)) then {
                                _hitsrange = true;
                            };
                        }; 
                        //also check oppisite heading!
                        if (!_hitsrange) then {
                            if (_heading >= 180) then {
                                _heading = _heading - 180;
                            }
                            else {
                                _heading = _heading + 180;
                            };
                            if (_zerowrap) then {
                                if ((_heading >= _min) or (_heading <= _max)) then {
                                    _hitsrange = true;
                                };
                            }
                            else {
                                if ((_heading >= _min) and (_heading <= _max)) then {
                                    _hitsrange = true;
                                };
                            };
                        };
                        if (_hitsrange) then {
                            //hits heading range. now finally check if dude is in front of radar
                            _PX = [_pos select 0,_pos select 1];
                            switch (true) do {
                                case (_heading == 0): {
                                    _PY = [_pos select 0,(_pos select 1)+RADAR_TRACK_RADIUS];
                                };
                                case (_heading < 90): {
                                    _PY = [(_pos select 0)+((sin _heading) * RADAR_TRACK_RADIUS),(_pos select 1)+((sin (90-_heading))*RADAR_TRACK_RADIUS)];
                                };
                                case (_heading == 90): {
                                    _PY = [(_pos select 0)+RADAR_TRACK_RADIUS,_pos select 1];
                                };
                                case (_heading < 180): {
                                    _PY = [(_pos select 0)+((sin (90-(_heading - 90)))*RADAR_TRACK_RADIUS),(_pos select 1)-((sin (_heading - 90))*RADAR_TRACK_RADIUS)];
                                };
                                case (_heading == 180): {
                                    _PY = [_pos select 0,(_pos select 1)-RADAR_TRACK_RADIUS];
                                };
                                case (_heading < 270): {
                                    _PY = [(_pos select 0)-((sin (_heading - 180))*RADAR_TRACK_RADIUS),(_pos select 1)-((sin (90-(_heading-180)))*RADAR_TRACK_RADIUS)];
                                };
                                case (_heading == 270): {
                                    _PY = [(_pos select 0)-RADAR_TRACK_RADIUS,_pos select 1];
                                };
                                case (_heading < 360): {
                                    _PY = [(_pos select 0)-((sin (90-(_heading-270)))*RADAR_TRACK_RADIUS),(_pos select 1)+((sin (_heading-270))*RADAR_TRACK_RADIUS)];
                                };
                            };
                            //found circle center _PX and heading crossing of radar radius at _PY
                            //get point _PZ as position X/Y of the driver
                            _PZ = [(getPosATL _vehicle) select 0,(getPosATL _vehicle) select 1];
                            
                            //calculating 2 vectors
                            _rXY = [(_PY select 0)-(_PX select 0),(_PY select 1)-(_PX select 1)];
                            _rXZ = [(_PZ select 0)-(_PX select 0),(_PZ select 1)-(_PX select 1)];
                            
                            //calculating dot product (scalar)
                            _scalar = ((_rXY select 0)*(_rXZ select 0)) + ((_rXY select 1)*(_rXZ select 1));
                            
                            //if scalar product < 0 then the vehicle stands in front of the radar
                            if (_scalar < 0) then {
                                //the dude gets busted!
                                //calling callback
                                [_dude,_speed,_maxspeed] spawn _callback;
                                sleep 5;
                            }
                        };
                    };
                };
            };
        } forEach _entities;
    }
    else {
        sleep 0.1;
    };
};