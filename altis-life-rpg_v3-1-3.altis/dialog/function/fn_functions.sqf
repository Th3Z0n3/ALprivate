NT_checkFriend = {
	private["_return"];
	_return = false;
	if((side _this) getFriend (side player) > 0.6) then {_return = true;};
	_return
};
NT_rankTAG = {
	private["_rankid","_ranktag"];
	_rankid = _this;
	_ranktag = "";
	switch (_rankid) do {
		case 0 : {_ranktag = "Private";};
		case 1 : {_ranktag = "Corporal";};
		case 2 : {_ranktag = "Sergeant";};
		case 3 : {_ranktag = "Lieutenant";};
		case 4 : {_ranktag = "Captain";};
		case 5 : {_ranktag = "Major";};
		case 6 : {_ranktag = "Colonel";};
		default  {};
	};
	_ranktag
};
NT_rankIMG = {
	private["_rankid","_unit","_rankimg"];
	_unit = _this;
	_rankid = rankId _unit;
	_rankimg = "";
	switch (_rankid) do {
		case 0 : {_rankimg = "a3\UI_F\data\GUI\Cfg\Ranks\private_gs.paa";};
		case 1 : {_rankimg = "a3\UI_F\data\GUI\Cfg\Ranks\corporal_gs.paa";};
		case 2 : {_rankimg = "a3\UI_F\data\GUI\Cfg\Ranks\sergeant_gs.paa";};
		case 3 : {_rankimg = "a3\UI_F\data\GUI\Cfg\Ranks\lieutenant_gs.paa";};
		case 4 : {_rankimg = "a3\UI_F\data\GUI\Cfg\Ranks\captain_gs.paa";};
		case 5 : {_rankimg = "a3\UI_F\data\GUI\Cfg\Ranks\major_gs.paa";};
		case 6 : {_rankimg = "a3\UI_F\data\GUI\Cfg\Ranks\colonel_gs.paa";};
		default  {};
	};
	_rankimg
};