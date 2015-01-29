if ((!isServer)||(!isDedicated)) then 
{
    private["_target","_dist"];
    
    _target = cursorTarget;
    if (_target == "Land_Atm_02_F") then {
        _dist = player distance _target;
        if(_dist < 3) then { //sind 3 Meter
            hintSilent "du bist nah genung";
            //dialog aufrufen
        } else {
            hintSilent "du bist zu weit weg";
        };
    };
    hintSilent format["target: %1 distance: %2",_target,_dist]; //nur zum debugen für dich
};