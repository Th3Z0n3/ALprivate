/*
	@Version: 1.0
	@Author: Leucocia
	@Edited: 25.03.2014
*/
private["_force"];

for "_i" from 0 to 200 do
{
	_force = random 15;
	"colorCorrections" ppEffectEnable true;
	"colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0.0, 0.0], [0.6, 0.6, 1.8, 0.7],  [0.199, 0.587, 0.114, 0.0]]; 
	"colorCorrections" ppEffectCommit 1;
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectAdjust [_force / 24, _force / 24, false];
	"chromAberration" ppEffectCommit (0.3 + random 0.1);
	waituntil {ppEffectCommitted "chromAberration"};
	waituntil {ppEffectCommitted "colorCorrections"};
	sleep 0.02;
};

"chromAberration" ppEffectEnable false;
"colorCorrections" ppEffectEnable false;
