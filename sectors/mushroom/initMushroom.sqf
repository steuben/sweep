
if ((!isDedicated) AND (isNil "mushroomActive")) then {	

	mushroomActive = true;
	publicVariable "mushroomActive";

	broadcast = "mushroomTriggered";
	publicVariable "broadcast";
	broadcast = nil;
	titleText ["Enemy activity detected in Mushroom sector.", "PLAIN"];
};

if (!isServer) exitWith {};


opforTrashbin = [];
setCreating = false;

// SPAWN RU BASE VICTOR

mushroomVictorBase="ACE_BMD_1_CDF" createVehicle getMarkerPos "mushroomAlphaSpawn0";
mushroomVictorBase setDir 90;
mushroomVictorBase setFuel 0;
mushroomVictorBase setVariable ["sector", mushroom, true];
mushroomVictorBaseGroup = Creategroup EAST;
mushroomVictorBaseGunner="RUS_Soldier1" createUnit [getMarkerPos "mushroomAlphaSpawn0", mushroomVictorBaseGroup, "mushroomVictorBaseGroup_leader=this; this setVariable ['sector', mushroom, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Sergeant"];

mushroomVictorBaseGroup_leader moveInGunner mushroomVictorBase;

//SPAWN EXTRA1 (MG)

extra1MGMushroom="DSHKM_TK_GUE_EP1" createVehicle getMarkerPos "mushroomExtra1Spawn";
extra1MGMushroom setDir 190;
sleep 1;
mushroomExtra1 = Creategroup EAST;
mushroomExtra1_1="MVD_Soldier" createUnit [getMarkerPos "mushroomExtra1Spawn", mushroomExtra1, "mushroomExtra1_leader=this; this setVariable ['sector', mushroom, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Sergeant"];
mushroomExtra1_leader moveInGunner extra1MGMushroom;

//SPAWN EXTRA2

extra2MGNestMushroom="D30_RU" createVehicle getMarkerPos "mushroomExtra2Spawn";
extra2MGNestMushroom setDir 90;
sleep 1;
mushroomExtra2 = Creategroup EAST;
mushroomExtra2_1="TK_INS_Soldier_4_EP1" createUnit [getMarkerPos "mushroomExtra2Spawn", mushroomExtra2, "mushroomExtra2_leader=this; this setVariable ['sector', mushroom, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Sergeant"];
mushroomExtra2_leader moveInGunner extra2MGNestMushroom;

//SPAWN EXTRA3

extra3MGNestMushroom="AGS_RU" createVehicle getMarkerPos "mushroomExtra3Spawn";
extra3MGNestMushroom setDir 90;
sleep 1;
mushroomExtra3 = Creategroup EAST;
mushroomExtra3_1="TK_INS_Soldier_4_EP1" createUnit [getMarkerPos "mushroomExtra3Spawn", mushroomExtra3, "mushroomExtra3_leader=this; this setVariable ['sector', mushroom, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Sergeant"];
mushroomExtra3_leader moveInGunner extra3MGNestMushroom;

//SPAWN EXTRA4

extra4MGNestMushroom="DSHKM_TK_GUE_EP1" createVehicle getMarkerPos "mushroomExtra4Spawn";
extra4MGNestMushroom setDir 90;
sleep 1;
mushroomExtra4 = Creategroup EAST;
mushroomExtra4_1="TK_INS_Soldier_4_EP1" createUnit [getMarkerPos "mushroomExtra4Spawn", mushroomExtra4, "mushroomExtra4_leader=this; this setVariable ['sector', mushroom, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Sergeant"];
mushroomExtra4_leader moveInGunner extra4MGNestMushroom;

// SPAWN SNIPER TEAM

mushroomSniper = Creategroup EAST;
mushroomSniper_1="RU_Soldier_Spotter" createUnit [getMarkerPos "mushroomSniperSpawn", mushroomSniper, "mushroomSniper_leader=this; this setVariable ['sector', mushroom, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Sergeant"];
mushroomSniper_2="RU_Soldier_SniperH" createUnit [getMarkerPos "mushroomSniperSpawn", mushroomSniper, "mushroomSniper2=this; this setVariable ['sector', mushroom, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Corporal"];

publicVariable "opforTrashbin";

sleep 2;

//SPAWN SECTOR EXTRAS

["mushroom"] execVM "sectors\initSectorExtras.sqf";

//SPAWN DEFAULT OPFOR SETS

["mushroom", "Alpha", "Default", 0] execVM "sectors\initSector.sqf";

waitUntil {!setCreating};
setCreating = true;
["mushroom", "Bravo", "Default", 0] execVM "sectors\initSector.sqf";

waitUntil {!setCreating};
setCreating = true;
["mushroom", "Charlie", "Default", 1] execVM "sectors\initSector.sqf";

waitUntil {!setCreating};
setCreating = true;
["mushroom", "Delta", "Default", 0] execVM "sectors\initSector.sqf";


//////add Killed EH´s
{_x addMPEventhandler ["MPKilled", "if (isServer) then {_this select 0 removeAllEventHandlers 'MPkilled'; [_this select 0, _this select 1] spawn killDetector_compiled;}"];} forEach opforTrashbin;

mushroomReady = true;
publicVariable "mushroomReady";
