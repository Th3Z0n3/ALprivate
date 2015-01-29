//##############################################################################
//# \SpeedRadar\PEG_fnc_SpeedRadarFlash.sqf
//# First Revision by: Florian Müller
//# 27.12.2013
//#	Edit by: Taiwendo
//# Displays a short double flash for the user who just drove too fast
//##############################################################################

private ["_flashColor","_flashRsc"];

_flashColor = "";
if (typeName _this == "ARRAY") then {
    if (count _this > 0) then {
        _flashColor = _this select 0;
    };
}
else {
    _flashColor = _this;
};
switch (_flashColor) do {
    case "RED": {
        _flashRsc = "RadarFlashRed";
    };
    default {
        _flashRsc = "RadarFlash";
    };
};

diag_log "Displaying Radar Flash";

playSound ["PhotoSound",true];
sleep 0.05;
999999 cutRsc [_flashRsc,"PLAIN"];
sleep 0.5;
999999 cutRsc [_flashRsc,"PLAIN"];

diag_log "Radar Flash finished";