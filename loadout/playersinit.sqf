
alpha = group steuben;
steuben setGroupID ["ALPHA","GroupColor4"];
bravo = group bbq;
bbq setGroupID ["BRAVO","GroupColor4"];

if (isDedicated) exitWith {};
sleep 3;
waitUntil {(!isNil "gnrf_moveCrusaderReady") AND (alive player)};


//steuben loadout
_unit = steuben;
_unit setPos getMarkerPos "steubenSpawn";
removeAllWeapons _unit;

// PRIMARY WEAPON MAGS / 12 slots (S) (zb stanag) / 6 slots (M) (zb betaC / smaw rocket)
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "HandGrenade_West";
_unit addMagazine "HandGrenade_West";
_unit addMagazine "HandGrenade_West";
_unit addMagazine "HandGrenade_West";

_unit addMagazine "PipeBomb";
_unit addMagazine "Laserbatteries";

// PRIMARY WEAPON
_unit addWeapon "ACE_HK417_Eotech_4x";

// MEDICAL SUPPLIES FOR IFAK
/*
_unit addMagazine "ACE_Bandage";
_unit addMagazine "ACE_Bandage";
_unit addMagazine "ACE_Epinephrine";
_unit addMagazine "ACE_Epinephrine";
_unit addMagazine "ACE_Morphine";
_unit addMagazine "ACE_Morphine";
*/

// SECONDARY WEAPON MAGS / 8 slots

_unit addMagazine "7Rnd_45ACP_1911";
_unit addMagazine "7Rnd_45ACP_1911";
_unit addMagazine "7Rnd_45ACP_1911";
_unit addMagazine "7Rnd_45ACP_1911";
_unit addMagazine "7Rnd_45ACP_1911";
_unit addMagazine "7Rnd_45ACP_1911";
_unit addMagazine "7Rnd_45ACP_1911";
_unit addMagazine "7Rnd_45ACP_1911";

// SECONDARY WEAPON
_unit addWeapon "Colt1911";

// EQUIPMENT
_unit addWeapon "ItemRadio";
_unit addWeapon "NVGoggles";
_unit addWeapon "ACE_MX2A";
_unit addWeapon "ACE_Earplugs";
_unit addWeapon "ItemGPS";
_unit addWeapon "ACE_HuntIR_monitor";

// RUCK
_unit addWeapon "ACE_Backpack_US";
_unit addWeapon "Laserdesignator";

reload steuben;

if (steuben hasWeapon "ACE_Earplugs") then {    
        [steuben] execFSM "\x\ace\addons\sys_goggles\use_earplug.fsm";    
};

//////////////////////////////////////////////////////////////////

// BBQ Loadout

_unit = bbq;
_unit setPos getMarkerPos "bbqSpawn";
removeAllWeapons _unit;

// PRIMARY WEAPON MAGS / 12 slots (S) (zb stanag) / 6 slots (M) (zb betaC / smaw rocket)
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "SMAW_HEAA";
_unit addMagazine "SMAW_HEAA";
_unit addMagazine "SMAW_HEAA";


// PRIMARY WEAPON
_unit addWeapon "SCAR_H_STD_EGLM_Spect";
_unit addWeapon "SMAW";

// MEDICAL SUPPLIES FOR IFAK
/*
_unit addMagazine "ACE_Bandage";
_unit addMagazine "ACE_Bandage";
_unit addMagazine "ACE_Epinephrine";
_unit addMagazine "ACE_Epinephrine";
_unit addMagazine "ACE_Morphine";
_unit addMagazine "ACE_Morphine";
*/


// SECONDARY WEAPON MAGS / 8 slots
_unit addMagazine "ACE_33Rnd_9x19_G18";
_unit addMagazine "ACE_33Rnd_9x19_G18";
_unit addMagazine "ACE_1Rnd_HE_M203";
_unit addMagazine "ACE_1Rnd_HE_M203";
_unit addMagazine "ACE_1Rnd_HE_M203";
_unit addMagazine "ACE_1Rnd_HE_M203";
_unit addMagazine "ACE_1Rnd_HE_M203";
_unit addMagazine "ACE_1Rnd_HE_M203";

// SECONDARY WEAPON
_unit addWeapon "ACE_Glock18";

// EQUIPMENT
_unit addWeapon "ItemRadio";
_unit addWeapon "Binocular";
_unit addWeapon "NVGoggles";
_unit addWeapon "ACE_Earplugs";
_unit addWeapon "ACE_GlassesBalaklavaGray";
_unit addWeapon "ItemGPS";

// RUCK
_unit addWeapon "ACE_Backpack_US";

reload bbq;

if (bbq hasWeapon "ACE_Earplugs") then {    
        [bbq] execFSM "\x\ace\addons\sys_goggles\use_earplug.fsm";    
};

////////////////////////////////////////////////////////////////

//CREATE TEAM STEUBEN (alpha)

if (player == steuben) then {

"steubenSpawn" setMarkerPos getpos steuben; 

"ACE_USMC_SoldierM_Marksman_D" createUnit [getMarkerPos "steubenSpawn", alpha, "steuben2=this; this setVariable ['ace_w_eh',0];", 1, ""];
"ACE_USMC_Soldier_TAR_D" createUnit [getMarkerPos "steubenSpawn", alpha, "steuben3=this; this setVariable ['ace_w_eh',0];", 1, ""];
"ACE_USMC_Soldier_AT_D" createUnit [getMarkerPos "steubenSpawn", alpha, "steuben4=this; this setVariable ['ace_w_eh',0];", 0.8, ""];
"ACE_USMC_Soldier_GL_D" createUnit [getMarkerPos "steubenSpawn", alpha, "steuben5=this; this setVariable ['ace_w_eh',0];", 0.8, ""];

"ACE_USMC_Soldier_Medic_D" createUnit [getMarkerPos "steubenSpawn", alpha, "steuben6=this; this setVariable ['ace_w_eh',0];", 0.6, ""];
"ACE_USMC_Soldier_Medic_D" createUnit [getMarkerPos "steubenSpawn", alpha, "steuben7=this; this setVariable ['ace_w_eh',0];", 0.6, ""];
"ACE_USMC_SoldierS_Engineer_D" createUnit [getMarkerPos "steubenSpawn", alpha, "steuben8=this; this setVariable ['ace_w_eh',0];", 0.7, ""];
"ACE_USMC_SoldierS_Engineer_D" createUnit [getMarkerPos "steubenSpawn", alpha, "steuben9=this; this setVariable ['ace_w_eh',0];", 0.7, ""];

waitUntil {({alive _x} count units alpha) == 9};

// LOADAOUT TEAM STEUBEN

// 	DESIGNATED MARKSMAN steuben2
_unit = steuben2;

removeAllWeapons _unit;

// PRIMARY WEAPON MAGS / 12 slots (S) (zb stanag) / 6 slots (M) (zb betaC / smaw rocket)
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";

// PRIMARY WEAPON
_unit addWeapon "ACE_HK417_leupold";

// SECONDARY WEAPON MAGS / 8 slots
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";

// SECONDARY WEAPON
_unit addWeapon "glock17_EP1";

// EQUIPMENT
_unit addWeapon "Binocular";
_unit addWeapon "NVGoggles";
_unit addWeapon "ACE_Earplugs";
_unit addWeapon "ItemGPS";

// RUCK
_unit addWeapon "ACE_Backpack_US";

// DURCHLADEN
reload steuben2;

steuben2Weapons = weapons steuben2;
steuben2Magazines = magazines steuben2;
publicVariable "steuben2Weapons";
publicVariable "steuben2Magazines";


// 	AUTOMATIC RIFLEMAN steuben3
_unit = steuben3;

removeAllWeapons _unit;

// PRIMARY WEAPON MAGS / 12 slots (S) (zb stanag) / 6 slots (M) (zb betaC / smaw rocket)
_unit addMagazine "100Rnd_762x51_M240";
_unit addMagazine "100Rnd_762x51_M240";
_unit addMagazine "100Rnd_762x51_M240";
_unit addMagazine "100Rnd_762x51_M240";
_unit addMagazine "100Rnd_762x51_M240";
_unit addMagazine "100Rnd_762x51_M240";
_unit addMagazine "100Rnd_762x51_M240";
_unit addMagazine "100Rnd_762x51_M240";
_unit addMagazine "100Rnd_762x51_M240";
_unit addMagazine "100Rnd_762x51_M240";
_unit addMagazine "100Rnd_762x51_M240";
_unit addMagazine "100Rnd_762x51_M240";

// PRIMARY WEAPON
_unit addWeapon "Mk_48_DES_EP1";

// SECONDARY WEAPON MAGS / 8 slots
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";

// SECONDARY WEAPON
_unit addWeapon "glock17_EP1";

// EQUIPMENT
_unit addWeapon "Binocular";
_unit addWeapon "NVGoggles";
_unit addWeapon "ACE_Earplugs";
_unit addWeapon "ItemGPS";

// RUCK
_unit addWeapon "ACE_Backpack_US";

// DURCHLADEN
reload steuben3;

steuben3Weapons = weapons steuben3;
steuben3Magazines = magazines steuben3;
publicVariable "steuben3Weapons";
publicVariable "steuben3Magazines";

// 	Heavy Operator steuben4
_unit = steuben4;

removeAllWeapons _unit;

// PRIMARY WEAPON MAGS / 12 slots (S) (zb stanag) / 6 slots (M) (zb betaC / smaw rocket)
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_SMAW_NE";
_unit addMagazine "SMAW_HEAA";

// PRIMARY WEAPON
_unit addWeapon "SCAR_H_STD_EGLM_Spect";

// SECONDARY WEAPON MAGS / 8 slots
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "ACE_1Rnd_HE_M203";
_unit addMagazine "ACE_1Rnd_HE_M203";
_unit addMagazine "ACE_1Rnd_HE_M203";
_unit addMagazine "17Rnd_9x19_glock17";

// SECONDARY WEAPON
_unit addWeapon "glock17_EP1";

// EQUIPMENT
_unit addWeapon "Binocular";
_unit addWeapon "NVGoggles";
_unit addWeapon "ACE_Earplugs";
_unit addWeapon "ItemGPS";

// RUCK / LAUNCHER
_unit addWeapon "SMAW";


// DURCHLADEN
reload steuben4;

steuben4Weapons = weapons steuben4;
steuben4Magazines = magazines steuben4;
publicVariable "steuben4Weapons";
publicVariable "steuben4Magazines";

// 	Operator steuben5
_unit = steuben5;

removeAllWeapons _unit;

// PRIMARY WEAPON MAGS / 12 slots (S) (zb stanag) / 6 slots (M) (zb betaC / smaw rocket)
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";

// PRIMARY WEAPON
_unit addWeapon "ACE_M16A4_ACG_GL_UP";

// SECONDARY WEAPON MAGS / 8 slots
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";

// SECONDARY WEAPON
_unit addWeapon "glock17_EP1";

// EQUIPMENT
_unit addWeapon "Binocular";
_unit addWeapon "NVGoggles";
_unit addWeapon "ACE_Earplugs";
_unit addWeapon "ItemGPS";

// RUCK
_unit addWeapon "ACE_Backpack_US";

// DURCHLADEN
reload steuben5;

steuben5Weapons = weapons steuben5;
steuben5Magazines = magazines steuben5;
publicVariable "steuben5Weapons";
publicVariable "steuben5Magazines";


// 	Medic steuben6
_unit = steuben6;

removeAllWeapons _unit;

// PRIMARY WEAPON MAGS / 12 slots (S) (zb stanag) / 6 slots (M) (zb betaC / smaw rocket)
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";

// PRIMARY WEAPON
_unit addWeapon "ACE_HK417_Eotech_4x";

// SECONDARY WEAPON MAGS / 8 slots
/*_unit addMagazine "ACE_Medkit";
_unit addMagazine "ACE_Medkit";
_unit addMagazine "ACE_Bandage";
_unit addMagazine "ACE_Bandage";
_unit addMagazine "ACE_Morphine";
_unit addMagazine "ACE_Morphine";
_unit addMagazine "ACE_Epinephrine";
_unit addMagazine "ACE_Epinephrine";*/

// SECONDARY WEAPON
//_unit addWeapon "glock17_EP1";

// EQUIPMENT
_unit addWeapon "Binocular";
_unit addWeapon "NVGoggles";
_unit addWeapon "ACE_Earplugs";
_unit addWeapon "ItemGPS";

// RUCK
_unit addWeapon "ACE_Rucksack_MOLLE_Green_Medic";

// DURCHLADEN
reload steuben6;

steuben6Weapons = weapons steuben6;
steuben6Magazines = magazines steuben6;
publicVariable "steuben6Weapons";
publicVariable "steuben6Magazines";


// 	Medic steuben7
_unit = steuben7;

removeAllWeapons _unit;

// PRIMARY WEAPON MAGS / 12 slots (S) (zb stanag) / 6 slots (M) (zb betaC / smaw rocket)
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";

// PRIMARY WEAPON
_unit addWeapon "ACE_HK417_Eotech_4x";

// SECONDARY WEAPON MAGS / 8 slots
/*_unit addMagazine "ACE_Medkit";
_unit addMagazine "ACE_Medkit";
_unit addMagazine "ACE_Bandage";
_unit addMagazine "ACE_Bandage";
_unit addMagazine "ACE_Morphine";
_unit addMagazine "ACE_Morphine";
_unit addMagazine "ACE_Epinephrine";
_unit addMagazine "ACE_Epinephrine";*/

// SECONDARY WEAPON
//_unit addWeapon "glock17_EP1";

// EQUIPMENT
_unit addWeapon "Binocular";
_unit addWeapon "NVGoggles";
_unit addWeapon "ACE_Earplugs";
_unit addWeapon "ItemGPS";

// RUCK
_unit addWeapon "ACE_Rucksack_MOLLE_Green_Medic";

// DURCHLADEN
reload steuben7;

steuben7Weapons = weapons steuben7;
steuben7Magazines = magazines steuben7;
publicVariable "steuben7Weapons";
publicVariable "steuben7Magazines";


// 	Engineer steuben8
_unit = steuben8;

removeAllWeapons _unit;

// PRIMARY WEAPON MAGS / 12 slots (S) (zb stanag) / 6 slots (M) (zb betaC / smaw rocket)
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "PipeBomb";
_unit addMagazine "PipeBomb";
_unit addMagazine "PipeBomb";
_unit addMagazine "PipeBomb";

// PRIMARY WEAPON
_unit addWeapon "ACE_HK417_Eotech_4x";

// SECONDARY WEAPON MAGS / 8 slots
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";

// SECONDARY WEAPON
_unit addWeapon "glock17_EP1";

// EQUIPMENT
_unit addWeapon "Binocular";
_unit addWeapon "NVGoggles";
_unit addWeapon "ACE_Earplugs";
_unit addWeapon "ItemGPS";

// RUCK
_unit addWeapon "ACE_Rucksack_MOLLE_DMARPAT";

// DURCHLADEN
reload steuben8;

steuben8Weapons = weapons steuben8;
steuben8Magazines = magazines steuben8;
publicVariable "steuben8Weapons";
publicVariable "steuben8Magazines";


// 	Engineer steuben9
_unit = steuben9;

removeAllWeapons _unit;

// PRIMARY WEAPON MAGS / 12 slots (S) (zb stanag) / 6 slots (M) (zb betaC / smaw rocket)
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "ACE_20Rnd_762x51_T_HK417";
_unit addMagazine "PipeBomb";
_unit addMagazine "PipeBomb";
_unit addMagazine "PipeBomb";
_unit addMagazine "PipeBomb";

// PRIMARY WEAPON
_unit addWeapon "ACE_HK417_Eotech_4x";

// SECONDARY WEAPON MAGS / 8 slots
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";

// SECONDARY WEAPON
_unit addWeapon "glock17_EP1";

// EQUIPMENT
_unit addWeapon "Binocular";
_unit addWeapon "NVGoggles";
_unit addWeapon "ACE_Earplugs";
_unit addWeapon "ItemGPS";

// RUCK
_unit addWeapon "ACE_Rucksack_MOLLE_DMARPAT";

// DURCHLADEN
reload steuben9;

steuben9Weapons = weapons steuben9;
steuben9Magazines = magazines steuben9;
publicVariable "steuben9Weapons";
publicVariable "steuben9Magazines";

////////////////
publicVariable "steuben2";
publicVariable "steuben3";
publicVariable "steuben4";
publicVariable "steuben5";
publicVariable "steuben6";
publicVariable "steuben7";
publicVariable "steuben8";
publicVariable "steuben9";

{_x assignTeam "RED"} foreach [steuben2,steuben3,steuben4,steuben5];
{_x assignTeam "GREEN"} foreach [steuben6,steuben7];
{_x assignTeam "BLUE"} foreach [steuben8,steuben9];


steuben6 moveInDriver medevacVictor;
steuben7 moveInCargo [medevacVictor, 0];

steuben8 moveInDriver utilityVictor;
steuben9 moveInCargo [utilityVictor, 0];

{if (!isPlayer _x) then {doStop _x}} forEach units group player;

[0, {{_x addMPEventhandler ["MPKilled", "if (isServer) then {[_this select 0, _this select 1] spawn killDetector_compiled}"]} forEach units group steuben;}] call CBA_fnc_globalExecute;

steuben2 moveInCargo [leadVictor, 0];
steuben3 moveInCargo [leadVictor, 1];
steuben4 moveInCargo [leadVictor, 2];
steuben5 moveInCargo [leadVictor, 3];

gnrf_initCounter = gnrf_initCounter + 1;
publicVariable "gnrf_initCounter";

};

////////////////////////////////////////////////////////////////////////

//CREATE TEAM BBQ (bravo)

if (player == bbq) then {

"bbqSpawn" setMarkerPos getpos bbq; 

"ACE_USMC_SoldierM_Marksman_D" createUnit [getMarkerPos "bbqSpawn", bravo, "bbq2=this; this setVariable ['ace_w_eh',0];", 1, ""];
"ACE_USMC_Soldier_TAR_D" createUnit [getMarkerPos "bbqSpawn", bravo, "bbq3=this; this setVariable ['ace_w_eh',0];", 1, ""];
"ACE_USMC_Soldier_D" createUnit [getMarkerPos "bbqSpawn", bravo, "bbq4=this; this setVariable ['ace_w_eh',0];", 0.8, ""];
"ACE_USMC_Soldier_GL_D" createUnit [getMarkerPos "bbqSpawn", bravo, "bbq5=this; this setVariable ['ace_w_eh',0];", 0.8, ""];

"ACE_USMC_Soldier_D" createUnit [getMarkerPos "bbqSpawn", bravo, "bbq6=this; this setVariable ['ace_w_eh',0];", 0.6, ""];
"ACE_USMC_Soldier_D" createUnit [getMarkerPos "bbqSpawn", bravo, "bbq7=this; this setVariable ['ace_w_eh',0];", 0.6, ""];
"ACE_USMC_Soldier_D" createUnit [getMarkerPos "bbqSpawn", bravo, "bbq8=this; this setVariable ['ace_w_eh',0];", 0.6, ""];
"ACE_USMC_Soldier_D" createUnit [getMarkerPos "bbqSpawn", bravo, "bbq9=this; this setVariable ['ace_w_eh',0];", 0.6, ""];

waitUntil {({alive _x} count units bravo) == 9};


// LOADAOUT TEAM bbq

// 	MEDIC bbq2
_unit = bbq2;

removeAllWeapons _unit;

// PRIMARY WEAPON MAGS / 12 slots (S) (zb stanag) / 6 slots (M) (zb betaC / smaw rocket)
_unit addMagazine "ACE_20Rnd_762x51_T_DMR";
_unit addMagazine "ACE_20Rnd_762x51_T_DMR";
_unit addMagazine "ACE_20Rnd_762x51_T_DMR";
_unit addMagazine "ACE_20Rnd_762x51_T_DMR";
_unit addMagazine "ACE_20Rnd_762x51_T_DMR";
_unit addMagazine "ACE_20Rnd_762x51_T_DMR";
_unit addMagazine "ACE_20Rnd_762x51_T_DMR";
_unit addMagazine "ACE_20Rnd_762x51_T_DMR";
_unit addMagazine "ACE_20Rnd_762x51_T_DMR";
_unit addMagazine "ACE_20Rnd_762x51_T_DMR";
_unit addMagazine "ACE_20Rnd_762x51_T_DMR";
_unit addMagazine "ACE_20Rnd_762x51_T_DMR";

// PRIMARY WEAPON
_unit addWeapon "ACE_M14_ACOG";

// SECONDARY WEAPON MAGS / 8 slots
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";

// SECONDARY WEAPON
_unit addWeapon "glock17_EP1";

// EQUIPMENT
_unit addWeapon "Binocular";
_unit addWeapon "NVGoggles";
_unit addWeapon "ACE_Earplugs";
_unit addWeapon "ItemGPS";

// RUCK
_unit addWeapon "ACE_PRC119_ACU";

// DURCHLADEN
reload bbq2;

bbq2Weapons = weapons bbq2;
bbq2Magazines = magazines bbq2;
publicVariable "bbq2Weapons";
publicVariable "bbq2Magazines";

// 	AUTOMATIC RIFLEMAN bbq3
_unit = bbq3;

removeAllWeapons _unit;

// PRIMARY WEAPON MAGS / 12 slots (S) (zb stanag) / 6 slots (M) (zb betaC / smaw rocket)
_unit addMagazine "200Rnd_556x45_M249";
_unit addMagazine "200Rnd_556x45_M249";
_unit addMagazine "200Rnd_556x45_M249";
_unit addMagazine "200Rnd_556x45_M249";
_unit addMagazine "200Rnd_556x45_M249";
_unit addMagazine "200Rnd_556x45_M249";

// PRIMARY WEAPON
_unit addWeapon "ACE_M249_PIP_ACOG";

// SECONDARY WEAPON MAGS / 8 slots
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";
_unit addMagazine "17Rnd_9x19_glock17";

// SECONDARY WEAPON
_unit addWeapon "glock17_EP1";

// EQUIPMENT
_unit addWeapon "Binocular";
_unit addWeapon "NVGoggles";
_unit addWeapon "ACE_Earplugs";
_unit addWeapon "ItemGPS";

// RUCK
_unit addWeapon "ACE_Backpack_US";

// DURCHLADEN
reload bbq3;

bbq3Weapons = weapons bbq3;
bbq3Magazines = magazines bbq3;
publicVariable "bbq3Weapons";
publicVariable "bbq3Magazines";

// 	Operator bbq4
_unit = bbq4;

removeAllWeapons _unit;

// PRIMARY WEAPON MAGS / 12 slots (S) (zb stanag) / 6 slots (M) (zb betaC / smaw rocket)
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";
_unit addMagazine "ACE_100Rnd_556x45_S_BetaCMag";

// PRIMARY WEAPON
_unit addWeapon "ACE_M16A4_ACG_GL_UP";

// SECONDARY WEAPON MAGS / 8 slots
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";

// SECONDARY WEAPON
//_unit addWeapon "glock17_EP1";

// EQUIPMENT
_unit addWeapon "Binocular";
_unit addWeapon "NVGoggles";
_unit addWeapon "ACE_Earplugs";
_unit addWeapon "ItemGPS";

// RUCK
_unit addWeapon "ACE_Backpack_US";

// DURCHLADEN
reload bbq4;

bbq4Weapons = weapons bbq4;
bbq4Magazines = magazines bbq4;
publicVariable "bbq4Weapons";
publicVariable "bbq4Magazines";

// 	Operator bbq5
_unit = bbq5;

removeAllWeapons _unit;

// PRIMARY WEAPON MAGS / 12 slots (S) (zb stanag) / 6 slots (M) (zb betaC / smaw rocket)
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";

// PRIMARY WEAPON
_unit addWeapon "SCAR_H_STD_EGLM_Spect";

// SECONDARY WEAPON MAGS / 8 slots
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";

// SECONDARY WEAPON
//_unit addWeapon "glock17_EP1";

// EQUIPMENT
_unit addWeapon "Binocular";
_unit addWeapon "NVGoggles";
_unit addWeapon "ACE_Earplugs";
_unit addWeapon "ItemGPS";

// RUCK
_unit addWeapon "ACE_Backpack_US";

// DURCHLADEN
reload bbq5;

bbq5Weapons = weapons bbq5;
bbq5Magazines = magazines bbq5;
publicVariable "bbq5Weapons";
publicVariable "bbq5Magazines";

// 	Crewman bbq6
_unit = bbq6;

removeAllWeapons _unit;

// PRIMARY WEAPON MAGS / 12 slots (S) (zb stanag) / 6 slots (M) (zb betaC / smaw rocket)
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";

// PRIMARY WEAPON
_unit addWeapon "SCAR_H_STD_EGLM_Spect";

// SECONDARY WEAPON MAGS / 8 slots
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";

// SECONDARY WEAPON
//_unit addWeapon "glock17_EP1";

// EQUIPMENT
_unit addWeapon "Binocular";
_unit addWeapon "NVGoggles";
_unit addWeapon "ACE_Earplugs";
_unit addWeapon "ItemGPS";

// RUCK
_unit addWeapon "ACE_Backpack_US";

// DURCHLADEN
reload bbq6;

bbq6Weapons = weapons bbq6;
bbq6Magazines = magazines bbq6;
publicVariable "bbq6Weapons";
publicVariable "bbq6Magazines";

// 	Crewman bbq7
_unit = bbq7;

removeAllWeapons _unit;

// PRIMARY WEAPON MAGS / 12 slots (S) (zb stanag) / 6 slots (M) (zb betaC / smaw rocket)
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";

// PRIMARY WEAPON
_unit addWeapon "SCAR_H_STD_EGLM_Spect";

// SECONDARY WEAPON MAGS / 8 slots
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";

// SECONDARY WEAPON
//_unit addWeapon "glock17_EP1";

// EQUIPMENT
_unit addWeapon "Binocular";
_unit addWeapon "NVGoggles";
_unit addWeapon "ACE_Earplugs";
_unit addWeapon "ItemGPS";

// RUCK
_unit addWeapon "ACE_Backpack_US";

// DURCHLADEN
reload bbq7;

bbq7Weapons = weapons bbq7;
bbq7Magazines = magazines bbq7;
publicVariable "bbq7Weapons";
publicVariable "bbq7Magazines";

// 	Crewman bbq8
_unit = bbq8;

removeAllWeapons _unit;

// PRIMARY WEAPON MAGS / 12 slots (S) (zb stanag) / 6 slots (M) (zb betaC / smaw rocket)
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";

// PRIMARY WEAPON
_unit addWeapon "SCAR_H_STD_EGLM_Spect";

// SECONDARY WEAPON MAGS / 8 slots
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";

// SECONDARY WEAPON
//_unit addWeapon "glock17_EP1";

// EQUIPMENT
_unit addWeapon "Binocular";
_unit addWeapon "NVGoggles";
_unit addWeapon "ACE_Earplugs";
_unit addWeapon "ItemGPS";

// RUCK
_unit addWeapon "ACE_Backpack_US";

// DURCHLADEN
reload bbq8;

bbq8Weapons = weapons bbq8;
bbq8Magazines = magazines bbq8;
publicVariable "bbq8Weapons";
publicVariable "bbq8Magazines";

// 	Crewman bbq9
_unit = bbq9;

removeAllWeapons _unit;

// PRIMARY WEAPON MAGS / 12 slots (S) (zb stanag) / 6 slots (M) (zb betaC / smaw rocket)
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";
_unit addMagazine "ACE_20Rnd_762x51_T_SCAR";

// PRIMARY WEAPON
_unit addWeapon "SCAR_H_STD_EGLM_Spect";

// SECONDARY WEAPON MAGS / 8 slots
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";
_unit addMagazine "1Rnd_HE_M203";

// SECONDARY WEAPON
//_unit addWeapon "glock17_EP1";

// EQUIPMENT
_unit addWeapon "Binocular";
_unit addWeapon "NVGoggles";
_unit addWeapon "ACE_Earplugs";
_unit addWeapon "ItemGPS";

// RUCK
_unit addWeapon "ACE_Backpack_US";

// DURCHLADEN
reload bbq9;

bbq9Weapons = weapons bbq9;
bbq9Magazines = magazines bbq9;
publicVariable "bbq9Weapons";
publicVariable "bbq9Magazines";

/////////////////////////////////////////////////
////////////////////////////////////////////////

publicVariable "bbq2";
publicVariable "bbq3";
publicVariable "bbq4";
publicVariable "bbq5";
publicVariable "bbq6";
publicVariable "bbq7";
publicVariable "bbq8";
publicVariable "bbq9";

{_x assignTeam "BLUE"} foreach [bbq2,bbq3,bbq4,bbq5];
{_x assignTeam "RED"} foreach [bbq6,bbq7];
{_x assignTeam "YELLOW"} foreach [bbq8,bbq9];

{if (!isPlayer _x) then {doStop _x}} forEach units group player;

[0, {{_x addMPEventhandler ["MPKilled", "if (isServer) then {[_this select 0, _this select 1] spawn killDetector_compiled}"]} forEach units group bbq;}] call CBA_fnc_globalExecute;

//units get in
bbq2 moveInCargo [leadVictor, 4];
bbq3 moveInCargo [leadVictor, 5];
bbq4 moveInCargo [leadVictor, 6];
bbq5 moveInCargo [leadVictor, 7];

bbq6 moveInDriver hummvee1;
bbq7 moveInGunner hummvee1;

bbq8 moveInDriver hummvee2;
bbq9 moveInGunner hummvee2;

gnrf_initCounter = gnrf_initCounter + 1;
publicVariable "gnrf_initCounter";

};

//Save loadout
player setVariable ["magazines", magazines player];
player setVariable ["weapons", weapons player];

gnrf_respawnInfo = [];
gnrf_respawnInfo set [0, [medevacVictor, 10]]; //add respawn pos - players always spawn at the nearest spawnpos. parameters: 
gnrf_respawnInfo set [1, [[4057.44,3189.92,16.9818], 0]]; //[[position] OR global object name for dynamic position, offset (radius in m, 0 for exact positioning)]
publicVariable "gnrf_respawnInfo"; 		

//attach helper arrow
if ((paramsArray select 6) == 1) then 
{
	_dude = player;
	["gnrf_clientExecute", [_dude, "spawn", "grnf_helperArrow_fnc"]] call CBA_fnc_remoteEvent;
}; 

