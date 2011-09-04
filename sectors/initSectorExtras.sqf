
_sector = _this select 0;

//spawn 0 - 2 bombermen
_random = round (random 99);
switch (true) do {

	case (_random < 60) : {[_sector] execVM "extras\bombermen\bombermen.sqf"};

	case ((_random >= 60) AND (_random < 70)) : {[_sector] execVM "extras\bombermen\bombermen.sqf"; [_sector] execVM "extras\bombermen\bombermen.sqf"};
	
};