closeDialog 0;
openmap true;
closeDialog 0;
onMapSingleClick "(vehicle player) setPos [_pos select 0, _pos select 1, 0]; openmap false; onMapSingleClick '';";
while {visibleMap} do {};
onMapSingleClick '';


/*abcd={

_pos = [_this select 0, _this select 1, _this select 2];
(vehicle player) setpos [_pos select 0, _pos select 1, 0];
player setVariable["lastPos",1];player setVariable["lastPos",[]];
onMapSingleClick "";
openMap [false, false];
};

openMap [true, false];
onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2] call abcd";*/