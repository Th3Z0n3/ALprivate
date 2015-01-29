### Reworked Teargas Script by Th3Z0n3 ###
### Teargas effects on green smoke ###

While{true} do {
 "dynamicBlur" ppEffectEnable true;
 "dynamicBlur" ppEffectCommit 12;
 "dynamicBlur" ppEffectAdjust [0];
 resetCamShake;
 20 fadeSound 1;


 waituntil{
 ((nearestObject [getpos player, "SmokeShellgreen"]) distance player < 25) 
 and 
 (getpos (nearestObject [getpos player, "SmokeShellgreen"]) select 2 < 0.5)
 };

if (antidote1 == 2583) then {
 "dynamicBlur" ppEffectEnable true;
 "dynamicBlur" ppEffectAdjust [30];
 "dynamicBlur" ppEffectCommit 4;
 enableCamShake true;
 addCamShake [8, 38, 8];
 player setFatigue 1;
 5 fadeSound 0.1;
};

 sleep 5;

}; 