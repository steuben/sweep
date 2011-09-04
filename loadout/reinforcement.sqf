
sleep 1; 

//remove all KilledEH´s
{_x removeAllEventHandlers "MPkilled"} forEach units group player;

if (player == steuben) then {

//CREATE TEAM STEUBEN (alpha)

"steubenSpawn" setMarkerPos getpos steuben; 

if (!alive steuben2) then {
	"ACE_USMC_SoldierM_Marksman_D" createUnit [getMarkerPos "steubenSpawn", alpha, "steuben2=this", 1, ""];
};

if (!alive steuben3) then {
	"ACE_USMC_Soldier_TAR_D" createUnit [getMarkerPos "steubenSpawn", alpha, "steuben3=this", 1, ""];
};

if (!alive steuben4) then {
	"ACE_USMC_Soldier_AT_D" createUnit [getMarkerPos "steubenSpawn", alpha, "steuben4=this", 0.8, ""];
};

if (!alive steuben5) then {
	"ACE_USMC_Soldier_GL_D" createUnit [getMarkerPos "steubenSpawn", alpha, "steuben5=this", 0.8, ""];
};

if (!alive popadley) then {
	"ACE_USMC_Soldier_Medic_D" createUnit [getMarkerPos "steubenSpawn", alpha, "popadley=this", 0.6, ""];
};

if ((!alive popadley2) AND (getdammage medevacVictor < 0.9)) then {
	"ACE_USMC_Soldier_Medic_D" createUnit [getMarkerPos "steubenSpawn", alpha, "popadley2=this", 0.6, ""];
};

if (!alive steubenHummer1) then {
	"ACE_USMC_SoldierS_Engineer_D" createUnit [getMarkerPos "steubenSpawn", alpha, "steubenHummer1=this", 0.6, ""];
};

if ((!alive steubenHummer2) AND (getdammage utilityHummvee < 0.9)) then {
	"ACE_USMC_SoldierS_Engineer_D" createUnit [getMarkerPos "steubenSpawn", alpha, "steubenHummer2=this", 0.6, ""];
};

// LOADOUT TEAM STEUBEN

// 	MEDIC steuben2

waitUntil {alive steuben2};

_unit = steuben2;

removeAllWeapons _unit;
{_unit addMagazine _x;} forEach steuben2Magazines;
{_unit addWeapon _x;} forEach steuben2Weapons;
reload _unit;


// 	AUTOMATIC RIFLEMAN steuben3

waitUntil {alive steuben3};

_unit = steuben3;

removeAllWeapons _unit;
{_unit addMagazine _x;} forEach steuben3Magazines;
{_unit addWeapon _x;} forEach steuben3Weapons;
reload _unit;


// 	Operator steuben4

waitUntil {alive steuben4};

_unit = steuben4;

removeAllWeapons _unit;
{_unit addMagazine _x;} forEach steuben4Magazines;
{_unit addWeapon _x;} forEach steuben4Weapons;
reload _unit;

// 	Operator steuben5

waitUntil {alive steuben5};

_unit = steuben5;

removeAllWeapons _unit;
{_unit addMagazine _x;} forEach steuben5Magazines;
{_unit addWeapon _x;} forEach steuben5Weapons;
reload _unit;

// 	Engineer steubenHummer1

waitUntil {alive steubenHummer1};

_unit = steubenHummer1;

removeAllWeapons _unit;
{_unit addMagazine _x;} forEach steubenHummer1Magazines;
{_unit addWeapon _x;} forEach steubenHummer1Weapons;
reload _unit;

// 	Engineer steubenHummer2

waitUntil {alive steubenHummer2};

_unit = steubenHummer2;

removeAllWeapons _unit;
{_unit addMagazine _x;} forEach steubenHummer2Magazines;
{_unit addWeapon _x;} forEach steubenHummer2Weapons;
reload _unit;

// 	Medic Popadley

waitUntil {alive popadley};

_unit = popadley;

removeAllWeapons _unit;
{_unit addMagazine _x;} forEach popadleyMagazines;
{_unit addWeapon _x;} forEach popadleyWeapons;
reload _unit;

// 	Medic Popadley2

waitUntil {alive popadley2};

_unit = popadley2;

removeAllWeapons _unit;
{_unit addMagazine _x;} forEach popadley2Magazines;
{_unit addWeapon _x;} forEach popadley2Weapons;
reload _unit;


{_x assignTeam "RED"} foreach [steuben2,steuben3,steuben4,steuben5];
{_x assignTeam "GREEN"} foreach [popadley,popadley2];
{_x assignTeam "BLUE"} foreach [steubenHummer1,steubenHummer2];

};

////////////////////////////////////////////////////////////////////////

//CREATE TEAM BBQ (bravo)

if (player == bbq) then {

"bbqSpawn" setMarkerPos getpos bbq; 

if (!alive bbq2) then {
	"ACE_USMC_SoldierM_Marksman_D" createUnit [getMarkerPos "bbqSpawn", bravo, "bbq2=this", 1, ""];
};

if (!alive bbq3) then {
	"ACE_USMC_Soldier_TAR_D" createUnit [getMarkerPos "bbqSpawn", bravo, "bbq3=this", 1, ""];
};

if (!alive bbq4) then {
	"ACE_USMC_Soldier_D" createUnit [getMarkerPos "bbqSpawn", bravo, "bbq4=this", 0.8, ""];
};

if (!alive bbq5) then {
	"ACE_USMC_Soldier_GL_D" createUnit [getMarkerPos "bbqSpawn", bravo, "bbq5=this", 0.8, ""];
};

if ((!alive bbq8) AND (getdammage hummvee1 < 0.9)) then {
	"ACE_USMC_Soldier_D" createUnit [getMarkerPos "bbqSpawn", bravo, "bbq8=this", 0.6, ""];
};

if ((!alive bbq9) AND (getdammage hummvee1 < 0.9)) then {
	"ACE_USMC_Soldier_D" createUnit [getMarkerPos "bbqSpawn", bravo, "bbq9=this", 0.6, ""];
};

if ((!alive bbqHummer1) AND (getdammage hummvee2 < 0.9)) then {
	"ACE_USMC_Soldier_D" createUnit [getMarkerPos "bbqSpawn", bravo, "bbqHummer1=this", 0.6, ""];
};

if ((!alive bbqHummer2) AND (getdammage hummvee2 < 0.9)) then {
	"ACE_USMC_Soldier_D" createUnit [getMarkerPos "bbqSpawn", bravo, "bbqHummer2=this", 0.6, ""];
};

// LOADAOUT TEAM bbq

// 	MEDIC bbq2

waitUntil {alive bbq2};

_unit = bbq2;

removeAllWeapons _unit;
{_unit addMagazine _x;} forEach bbq2Magazines;
{_unit addWeapon _x;} forEach bbq2Weapons;
reload _unit;

// 	AUTOMATIC RIFLEMAN bbq3

waitUntil {alive bbq3};

_unit = bbq3;

removeAllWeapons _unit;
{_unit addMagazine _x;} forEach bbq3Magazines;
{_unit addWeapon _x;} forEach bbq3Weapons;
reload _unit;

// 	Operator bbq4

waitUntil {alive bbq4};

_unit = bbq4;

removeAllWeapons _unit;
{_unit addMagazine _x;} forEach bbq4Magazines;
{_unit addWeapon _x;} forEach bbq4Weapons;
reload _unit;

// 	Operator bbq5

waitUntil {alive bbq5};

_unit = bbq5;

removeAllWeapons _unit;
{_unit addMagazine _x;} forEach bbq5Magazines;
{_unit addWeapon _x;} forEach bbq5Weapons;
reload _unit;


{_x assignTeam "BLUE"} foreach [bbq2,bbq3,bbq4,bbq5];
{_x assignTeam "RED"} foreach [bbq8,bbq9];
{_x assignTeam "YELLOW"} foreach [bbqHummer1,bbqHummer2];

};

// FAHRZEUGE AUFLADEN

leadVictor setFuel 1;
leadVictor setVehicleAmmo 1;

utilityVictor setFuel 1;

hummvee1 setFuel 1;
hummvee1 setVehicleAmmo 1;

hummvee2 setFuel 1;
hummvee2 setVehicleAmmo 1;

medevacVictor setFuel 1;


if ( canMove hummvee1) then {
bbq8 moveInDriver hummvee1;
bbq9 moveInGunner hummvee1;
};

if ( canMove hummvee2) then {
bbqHummer1 moveInDriver hummvee2;
bbqHummer2 moveInGunner hummvee2;
};

//add KilledEH
{_x addMPEventhandler ["MPKilled", "if (isServer) then {[_this select 0, _this select 1] spawn killDetector_compiled}"]} forEach units group player;
