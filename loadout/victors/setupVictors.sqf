
//save gear action

loadout = leadVictor addAction ["Save Gear","loadout\loadout.sqf"]; 
loadout = utilityVictor addAction ["Save Gear","loadout\loadout.sqf"]; 

// misc actions

//intimidateAudio1 = leadVictor addAction [("<t color=""#ff6600"">" + ("Intimidate By Audio") + "</t>"),"extras\sound\ghostriderIntimidate.sqf", [], 300, false, true, ""];
_coInMenu_act = utilityVictor addAction [("<t color=""#4693FF"">" + ("Construction") + "</t>"),"gen_action.sqf",[{	
	
	gnrf_CoIn = true;
	[] execVM "extras\CoIn\ingameCoIn.sqf"; 
	
}],0,false,false,"","isNil 'gnrf_CoIn'"];


// Kill Detection
leadVictor addMPEventhandler ["MPKilled", "if (isServer) then {[_this select 0, _this select 1] spawn killDetector_compiled}"];
utilityVictor addMPEventhandler ["MPKilled", "if (isServer) then {[_this select 0, _this select 1] spawn killDetector_compiled}"];
medevacVictor addMPEventhandler ["MPKilled", "if (isServer) then {[_this select 0, _this select 1] spawn killDetector_compiled}"];
hummvee1 addMPEventhandler ["MPKilled", "if (isServer) then {[_this select 0, _this select 1] spawn killDetector_compiled}"];
hummvee2 addMPEventhandler ["MPKilled", "if (isServer) then {[_this select 0, _this select 1] spawn killDetector_compiled}"];


////////////////////// UTILITY HUMMVEE

// clear cargo

clearMagazineCargo utilityVictor;
clearWeaponCargo utilityVictor;

// PRIMARY WEAPONS


utilityVictor addWeaponCargo ["ACE_G36A1_AG36A1_D",100];
utilityVictor addWeaponCargo ["G36K_camo",100];
utilityVictor addWeaponCargo ["G36_C_SD_camo",100];
utilityVictor addWeaponCargo ["ACE_SCAR_H_STD_Spect",100];
utilityVictor addWeaponCargo ["SCAR_H_STD_EGLM_Spect",100];
utilityVictor addWeaponCargo ["SCAR_H_CQC_CCO_SD",100];
utilityVictor addWeaponCargo ["ACE_M16A4_ACG_GL_UP",100];
utilityVictor addWeaponCargo ["ACE_M14_ACOG",100];

utilityVictor addWeaponCargo ["ACE_HK416_D14_COMPM3_M320",100];

utilityVictor addWeaponCargo ["ACE_HK417_Eotech_4x",100];
utilityVictor addWeaponCargo ["ACE_HK416_D10_COMPM3_SD",100];
utilityVictor addWeaponCargo ["ACE_HK416_D14_ACOG_PVS14",100];


utilityVictor addWeaponCargo ["SCAR_H_STD_TWS_SD",100];
utilityVictor addWeaponCargo ["Mk_48_DES_EP1",100];

utilityVictor addWeaponCargo ["M32_EP1",100];

// SNIPER RIFLES
utilityVictor addWeaponCargo ["ACE_HK417_leupold",100];
utilityVictor addWeaponCargo ["SCAR_H_LNG_Sniper_SD",100];
utilityVictor addWeaponCargo ["ACE_TAC50_SD",100];
utilityVictor addWeaponCargo ["BAF_LRR_scoped",100];
utilityVictor addWeaponCargo ["M110_NVG_EP1",100];
utilityVictor addWeaponCargo ["DMR",100];
utilityVictor addWeaponCargo ["ACE_M109",100];

// PRIMARY WPN MAGAZINES
utilityVictor addMagazineCargo ["ACE_100Rnd_556x45_S_BetaCMag",999];
utilityVictor addMagazineCargo ["ACE_20Rnd_762x51_T_SCAR",400];
utilityVictor addMagazineCargo ["100Rnd_762x51_M240",200];
utilityVictor addMagazineCargo ["ACE_5Rnd_25x59_HEDP_Barrett",999];
utilityVictor addMagazineCargo ["ACE_20Rnd_762x51_T_HK417",999];
utilityVictor addMagazineCargo ["ACE_20Rnd_762x51_T_DMR",999];
utilityVictor addMagazineCargo ["6Rnd_HE_M203",100];
utilityVictor addMagazineCargo ["ACE_6Rnd_CS_M32",100];

// SNIPER RIFLE MAGAZINES
utilityVictor addMagazineCargo ["ACE_20Rnd_762x51_T_M110",200];
utilityVictor addMagazineCargo ["ACE_5Rnd_127x99_T_TAC50",200];
utilityVictor addMagazineCargo ["ACE_5Rnd_86x70_T_L115A1",200];


//GRENADES
utilityVictor addMagazineCargo ["ACE_1Rnd_HE_M203",200];
utilityVictor addMagazineCargo ["1Rnd_HE_M203",200];
utilityVictor addMagazineCargo ["ACE_HuntIR_M203",30];
utilityVictor addMagazineCargo ["HandGrenade_West",300];

//EXPLOSIVES
utilityVictor addMagazineCargo ["PipeBomb",100];

utilityVictor addMagazineCargo ["ACE_M34",100];
utilityVictor addMagazineCargo ["ACE_Claymore_M",100];
utilityVictor addMagazineCargo ["ACE_M86PDM",100];

//LAUNCHERS + LAUNCHER AMMO
utilityVictor addWeaponCargo ["SMAW",100];
utilityVictor addMagazineCargo ["ACE_SMAW_NE",100];
utilityVictor addMagazineCargo ["SMAW_HEAA",100];
utilityVictor addMagazineCargo ["SMAW_HEDP",100];

utilityVictor addWeaponCargo ["ACE_Javelin_CLU",20];
utilityVictor addWeaponCargo ["ACE_Javelin_Direct",40];

// EQUIPMENT
utilityVictor addWeaponCargo ["ACE_HuntIR_monitor",6];
utilityVictor addWeaponCargo ["Laserdesignator",200];
utilityVictor addMagazineCargo ["Laserbatteries",30];
utilityVictor addWeaponCargo ["ACE_MX2A",100];
utilityVictor addMagazineCargo ["ACE_Battery_Rangefinder",30];
utilityVictor addWeaponCargo ["ACE_GlassesLHD_glasses",30];
utilityVictor addWeaponCargo ["ACE_Earplugs",30];
utilityVictor addWeaponCargo ["NVGoggles",30];

// SECONDARY

utilityVictor addWeaponCargo ["ACE_Glock18",200];
utilityVictor addMagazineCargo ["ACE_33Rnd_9x19_G18",200];

utilityVictor addWeaponCargo ["Colt1911",200];
utilityVictor addMagazineCargo ["7Rnd_45ACP_1911",200];

utilityVictor addWeaponCargo ["UZI_SD_EP1",200];
utilityVictor addMagazineCargo ["30Rnd_9x19_UZI_SD",200];

utilityVictor addWeaponCargo ["revolver_EP1",200];

// MEDEVAC 

clearMagazineCargo medevacVictor;
clearWeaponCargo medevacVictor;

medevacVictor addMagazineCargo ["ACE_Medkit",100];
medevacVictor addMagazineCargo ["ACE_Bandage",100];
medevacVictor addMagazineCargo ["ACE_LargeBandage",100];
medevacVictor addMagazineCargo ["ACE_Tourniquet",100];
medevacVictor addMagazineCargo ["ACE_Splint",100];
medevacVictor addMagazineCargo ["ACE_IV",100];
medevacVictor addMagazineCargo ["ACE_Plasma",100];
medevacVictor addMagazineCargo ["ACE_Epinephrine",100];
medevacVictor addMagazineCargo ["ACE_Morphine",100];
medevacVictor addMagazineCargo ["ACE_Knicklicht_R",100];
medevacVictor addMagazineCargo ["ACE_Knicklicht_IR",100];

