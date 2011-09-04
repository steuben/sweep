
if ((!isDedicated) AND (isNil "baconActive")) then {	

	baconActive = true;
	publicVariable "baconActive";

	broadcast = "baconTriggered";
	publicVariable "broadcast";
	broadcast = nil;
	titleText ["Enemy activity detected in Bacon sector.", "PLAIN"];
};

if (!isServer) exitWith {};

opforTrashbin = [];
setCreating = false;

//SPAWN EXTRA1 (MG)

extra1MGBacon="DSHKM_TK_GUE_EP1" createVehicle getMarkerPos "baconExtra1Spawn";
extra1MGBacon setDir 170;
sleep 1;
baconExtra1 = Creategroup EAST;
baconExtra1_1="TK_INS_Soldier_4_EP1" createUnit [getMarkerPos "baconExtra1Spawn", baconExtra1, "baconExtra1_leader=this; this setVariable ['sector', bacon, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Sergeant"];
baconExtra1_leader moveInGunner extra1MGBacon;

//SPAWN EXTRA2

extra2MGNestBacon="AGS_RU" createVehicle getMarkerPos "baconExtra2Spawn";
extra2MGNestBacon setDir 45;
sleep 1;
baconExtra2 = Creategroup EAST;
baconExtra2_1="TK_INS_Soldier_4_EP1" createUnit [getMarkerPos "baconExtra2Spawn", baconExtra2, "baconExtra2_leader=this; this setVariable ['sector', bacon, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Sergeant"];
baconExtra2_leader moveInGunner extra2MGNestBacon;

//SPAWN EXTRA3

extra3MGNestBacon="WarfareBMGNest_PK_TK_EP1" createVehicle getMarkerPos "baconExtra3Spawn";
extra3MGNestBacon setDir 45;
sleep 1;
baconExtra3 = Creategroup EAST;
baconExtra3_1="TK_INS_Soldier_4_EP1" createUnit [getMarkerPos "baconExtra3Spawn", baconExtra3, "baconExtra3_leader=this; this setVariable ['sector', bacon, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Sergeant"];
baconExtra3_leader moveInGunner extra3MGNestBacon;

publicVariable "opforTrashbin";

//SPAWN SECTOR EXTRAS

["bacon"] execVM "sectors\initSectorExtras.sqf";

//SPAWN DEFAULT OPFOR SETS
["bacon", "Alpha", "Default", 0] execVM "sectors\initSector.sqf";

waitUntil {!setCreating};
setCreating = true;
["bacon", "Bravo", "Default", 0] execVM "sectors\initSector.sqf";

waitUntil {!setCreating};
setCreating = true;
["bacon", "Charlie", "Default", 1] execVM "sectors\initSector.sqf";

waitUntil {!setCreating};
setCreating = true;
["bacon", "Delta", "Default", 0] execVM "sectors\initSector.sqf";


//////add Killed EH´s
{_x addMPEventhandler ["MPKilled", "if (isServer) then {_this select 0 removeAllEventHandlers 'MPkilled'; [_this select 0, _this select 1] spawn killDetector_compiled;}"];} forEach opforTrashbin;

baconReady = true;
publicVariable "baconReady";
