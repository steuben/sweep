
if ((!isDedicated) AND (isNil "omahaActive")) then {
	
	omahaActive = true;
	publicVariable "omahaActive";

	broadcast = "omahaTriggered"; //übergibt das script an den server
	publicVariable "broadcast";
	broadcast = nil;
	titleText ["Enemy activity detected in Omaha sector.", "PLAIN"];
};

if (!isServer) exitWith {};

opforTrashbin = [];
setCreating = false;

//SPAWN EXTRA1
extra1MGNestOmaha="WarfareBMGNest_PK_TK_EP1" createVehicle getMarkerPos "omahaExtra1Spawn";
extra1MGNestOmaha setDir 170;
omahaExtra1 = Creategroup EAST;
omahaExtra1_1="TK_INS_Warlord_EP1" createUnit [getMarkerPos "omahaExtra1Spawn", omahaExtra1, "omahaExtra1_leader=this; this setVariable ['sector', 'omaha', true]; opforTrashbin set [count opforTrashbin, this];", 1, "Sergeant"];
omahaExtra1_leader moveInGunner extra1MGNestOmaha;


//SPAWN EXTRA2
extra2MGOmaha="DSHKM_TK_GUE_EP1" createVehicle getMarkerPos "omahaExtra2Spawn";
extra2MGOmaha setDir 190;
omahaExtra2 = Creategroup EAST;
omahaExtra2_1="TK_INS_Warlord_EP1" createUnit [getMarkerPos "omahaExtra2Spawn", omahaExtra2, "omahaExtra2_leader=this; this setVariable ['sector', 'omaha', true]; opforTrashbin set [count opforTrashbin, this];", 1, "Sergeant"];
omahaExtra2_leader moveInGunner extra2MGOmaha;
omahaExtra2_leader setDir 190;


//SPAWN EXTRA3
extra3MG="DSHKM_TK_GUE_EP1" createVehicle getMarkerPos "omahaExtra3Spawn";
extra3MG setDir 270;
omahaExtra3 = Creategroup EAST;
omahaExtra3_1="TK_INS_Warlord_EP1" createUnit [getMarkerPos "omahaExtra3Spawn", omahaExtra3, "omahaExtra3_leader=this; this setVariable ['sector', 'omaha', true]; opforTrashbin set [count opforTrashbin, this];", 1, "Sergeant"];
omahaExtra3_2="TK_INS_Soldier_3_EP1" createUnit [getMarkerPos "omahaExtra3Spawn", omahaExtra3, "omahaExtra32=this; this setVariable ['sector', 'omaha', true]; opforTrashbin set [count opforTrashbin, this];", 0.5, "Corporal"];
omahaExtra3_3="TK_INS_Soldier_2_EP1" createUnit [getMarkerPos "omahaExtra3Spawn", omahaExtra3, "omahaExtra33=this; this setVariable ['sector', 'omaha', true]; opforTrashbin set [count opforTrashbin, this];", 0.5, "Corporal"];
omahaExtra3_leader moveInGunner extra3MG;
omahaExtra3_leader setDir 270;

//SPAWN SECTOR EXTRAS
["omaha"] execVM "sectors\initSectorExtras.sqf";

//SPAWN DEFAULT OPFOR SETS
["omaha", "Alpha", "Default", 0] execVM "sectors\initSector.sqf";

waitUntil {!setCreating};
setCreating = true;
["omaha", "Bravo", "Default", 0] execVM "sectors\initSector.sqf";

waitUntil {!setCreating};
setCreating = true;
["omaha", "Charlie", "Default", 0] execVM "sectors\initSector.sqf";

waitUntil {!setCreating};
setCreating = true;
["omaha", "Delta", "Default", 1] execVM "sectors\initSector.sqf";

waitUntil {!setCreating};

publicVariable "opforTrashbin";

//////add Killed EH´s
{_x addMPEventhandler ["MPKilled", "if (isServer) then {_this select 0 removeAllEventHandlers 'MPkilled'; [_this select 0, _this select 1] spawn killDetector_compiled;}"];} forEach opforTrashbin;

omahaReady = true;
publicVariable "omahaReady";

player sideChat "sector initialized";
