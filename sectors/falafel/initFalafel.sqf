
if ((!isDedicated) AND (isNil "falafelActive")) then {	

	falafelActive = true;
	publicVariable "falafelActive";

	broadcast = "falafelTriggered";
	publicVariable "broadcast";
	broadcast = nil;
	titleText ["Enemy activity detected in Falafel sector.", "PLAIN"];
};

if (!isServer) exitWith {};

opforTrashbin = [];
setCreating = false;

//SPAWN EXTRA1

extra1MGNestFalafel="WarfareBMGNest_PK_TK_EP1" createVehicle getMarkerPos "falafelExtra1Spawn";
extra1MGNestFalafel setDir 100;
sleep 1;
falafelExtra1 = Creategroup EAST;
falafelExtra1_1="TK_INS_Soldier_4_EP1" createUnit [getMarkerPos "falafelExtra1Spawn", falafelExtra1, "falafelExtra1_leader=this; this setVariable ['sector', falafel, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Sergeant"];
falafelExtra1_leader moveInGunner extra1MGNestFalafel;

//SPAWN EXTRA2

extra2MGNestFalafel="WarfareBMGNest_PK_TK_EP1" createVehicle getMarkerPos "falafelExtra2Spawn";
extra2MGNestFalafel setDir 130;
sleep 1;
falafelExtra2 = Creategroup EAST;
falafelExtra2_1="TK_INS_Soldier_4_EP1" createUnit [getMarkerPos "falafelExtra2Spawn", falafelExtra2, "falafelExtra2_leader=this; this setVariable ['sector', falafel, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Sergeant"];
falafelExtra2_leader moveInGunner extra2MGNestFalafel;

//SPAWN EXTRA3

extra3MGNestFalafel="WarfareBMGNest_PK_TK_EP1" createVehicle getMarkerPos "falafelExtra3Spawn";
extra3MGNestFalafel setDir 120;
sleep 1;
falafelExtra3 = Creategroup EAST;
falafelExtra3_1="TK_INS_Soldier_4_EP1" createUnit [getMarkerPos "falafelExtra3Spawn", falafelExtra3, "falafelExtra3_leader=this; this setVariable ['sector', falafel, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Sergeant"];
falafelExtra3_leader moveInGunner extra3MGNestFalafel;

publicVariable "opforTrashbin";

//SPAWN SECTOR EXTRAS
["falafel"] execVM "sectors\initSectorExtras.sqf";

//SPAWN DEFAULT OPFOR SETS

["falafel", "Alpha", "Default", 1] execVM "sectors\initSector.sqf";

waitUntil {!setCreating};
setCreating = true;
["falafel", "Bravo", "Default", 1] execVM "sectors\initSector.sqf";


waitUntil {!setCreating};
setCreating = true;
["falafel", "Charlie", "Default", 0] execVM "sectors\initSector.sqf";


waitUntil {!setCreating};
setCreating = true;
["falafel", "Delta", "Default", 1] execVM "sectors\initSector.sqf";


//////add Killed EH´s
{_x addMPEventhandler ["MPKilled", "if (isServer) then {_this select 0 removeAllEventHandlers 'MPkilled'; [_this select 0, _this select 1] spawn killDetector_compiled;}"];} forEach opforTrashbin;

falafelReady = true;
publicVariable "falafelReady";