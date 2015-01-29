/*
    File: fn_meth.sqf
    Author: Th3Z0n3 edited

    Description:
    Meth effects.
*/
private["_power"];

// Enable Script for 4 seconds
for "_i" from 0 to 200 do
{
	_power = random 15;
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectAdjust [_power / 24, _power / 24, false];
	"chromAberration" ppEffectCommit (0.3 + random 0.1);
	waituntil {ppEffectCommitted "chromAberration"};
	sleep 0.02;
};

// Script Done -- Disable Effect
"chromAberration" ppEffectEnable false;