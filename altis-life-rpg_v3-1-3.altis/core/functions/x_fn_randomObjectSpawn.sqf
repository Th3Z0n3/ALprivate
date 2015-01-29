fnc_randomObjectSpawn = {
    private["_positionArray","_objectArray","_objectCount","_maxDist","_y","_x","_z","_objectToSpawn","_center","_randomDir","_randomDist","_spawnPos","_safeSpawnPos","_myObject"];

    /****************************************
    Beispiel:

    _pos1 und _pos2 sind positions Arrays die man z.B so holen kann:
    _pos1 = getPosATL player;


    [[_pos1,_pos2],_myObjectsArray,_myObjectCount,_myMaxRange,_canSpawnOnStreet(true/false)] call fnc_randomObjectSpawn;
    [[_pos1,_pos2],_objects,300,200,false] call fnc_randomObjectSpawn;

    *****************************************/

    _positionArray = _this select 0; //zentren
    _objectArray = _this select 1; //objekt kollektion
    _objectCount = _this select 2; //wieviele objecte
    _maxDist = _this select 3; //max radius um marker
    _canSpawnOnRoad = _this select 4; //kann auf strasse spawnen (true = ja / false = nein)



    for [{_z=0},{_z< count _positionArray},{_z=_z+1}] do {

        _y = 0;
        for [{_x=1},{_x<=_objectCount},{_x=_x+1}] do {
        	_objectToSpawn =  _objectArray call BIS_fnc_selectRandom;
        	_center = _positionArray select _z;

            _randomDir = random 360;
            _randomDist = random _maxDist;

            _spawnPos= [_center, _randomDist, _randomDir] call BIS_fnc_relPos;
            _safeSpawnPos = _spawnPos findEmptyPosition [0,10,_objectToSpawn];

            if(!_canSpawnOnRoad && (isOnRoad _safeSpawnPos)) then {
               _x = _x - 1;
            } else {
                _myObject = createVehicle [_objectToSpawn, _safeSpawnPos, [], 0, "CAN_COLLIDE"];
                _myObject enableSimulation false;
                _myObject setDir random 360;
                _y = _y+1;
            };

            //hintSilent format["cycles: %1 objectsSpawn: %2",_x,_y];
        };
    };
};