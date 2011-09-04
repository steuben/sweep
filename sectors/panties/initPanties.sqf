
if ((!isDedicated) AND (isNil "pantiesActive")) then {	

	pantiesActive = true;
	publicVariable "pantiesActive";

	broadcast = "pantiesTriggered";
	publicVariable "broadcast";
	broadcast = nil;
	titleText ["Enemy activity detected in Panties sector.", "PLAIN"];
};

if (!isServer) exitWith {};

opforTrashbin = [];
setCreating = false;

//SPAWN SECTOR EXTRAS

["panties"] execVM "sectors\initSectorExtras.sqf";

//SPAWN DEFAULT OPFOR SETS

["panties", "Alpha", "Default", 1] execVM "sectors\initSector.sqf";

waitUntil {!setCreating};
setCreating = true;
["panties", "Bravo", "Default", 0] execVM "sectors\initSector.sqf";

waitUntil {!setCreating};
setCreating = true;
["panties", "Charlie", "Default", 0] execVM "sectors\initSector.sqf";

waitUntil {!setCreating};
setCreating = true;
["panties", "Delta", "Default", 0] execVM "sectors\initSector.sqf";


//////add Killed EH´s
{_x addMPEventhandler ["MPKilled", "if (isServer) then {_this select 0 removeAllEventHandlers 'MPkilled'; [_this select 0, _this select 1] spawn killDetector_compiled;}"];} forEach opforTrashbin;

pantiesReady = true;
publicVariable "pantiesReady";

