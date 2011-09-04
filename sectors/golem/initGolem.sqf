
if ((!isDedicated) AND (isNil "golemActive")) then {	

	golemActive = true;
	publicVariable "golemActive";

	broadcast = "golemTriggered";
	publicVariable "broadcast";
	broadcast = nil;
	titleText ["Enemy activity detected in Golem sector.", "PLAIN"];
};

if (!isServer) exitWith {};

opforTrashbin = [];
setCreating = false;

//SPAWN EXTRA1 MG nest

extra1MGNestGolem="WarfareBMGNest_PK_TK_EP1" createVehicle getMarkerPos "golemExtra1Spawn";
extra1MGNestGolem setDir 130;
sleep 1;
golemExtra1 = Creategroup EAST;
golemExtra1_1="TK_INS_Soldier_4_EP1" createUnit [getMarkerPos "golemExtra1Spawn", golemExtra1, "golemExtra1_leader=this; this setVariable ['sector', golem, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Sergeant"];
golemExtra1_leader moveInGunner extra1MGNestGolem;

//SPAWN EXTRA2 Dshkm Truck

extra2MGGolem="ACE_Ural_ZU23_RU" createVehicle getMarkerPos "golemExtra2Spawn";
extra2MGGolem setDir 190;
extra2MGGolem setFuel 0;
sleep 1;
golemExtra2 = Creategroup EAST;
golemExtra2_1="TK_INS_Soldier_4_EP1" createUnit [getMarkerPos "golemExtra2Spawn", golemExtra2, "golemExtra2_leader=this; this setVariable ['sector', golem, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Sergeant"];
golemExtra2_leader moveInGunner extra2MGGolem;

publicVariable "opforTrashbin";

//SPAWN SECTOR EXTRAS

["golem"] execVM "sectors\initSectorExtras.sqf";

//SPAWN DEFAULT OPFOR SETS

["golem", "Alpha", "Default", 0] execVM "sectors\initSector.sqf";

waitUntil {!setCreating};
setCreating = true;
["golem", "Bravo", "Default", 1] execVM "sectors\initSector.sqf";

waitUntil {!setCreating};
setCreating = true;
["golem", "Charlie", "Default", 0] execVM "sectors\initSector.sqf";

waitUntil {!setCreating};
setCreating = true;
["golem", "Delta", "Default", 0] execVM "sectors\initSector.sqf";


//////add Killed EH´s
{_x addMPEventhandler ["MPKilled", "if (isServer) then {_this select 0 removeAllEventHandlers 'MPkilled'; [_this select 0, _this select 1] spawn killDetector_compiled;}"];} forEach opforTrashbin;

golemReady = true;
publicVariable "golemReady";
