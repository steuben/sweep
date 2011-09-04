
if (isServer) then 

{
	_opforSet = "";
	_opforSetType = round(random 13);
	_randomSpawn = round(random 2);
	_sector = _this select 0;
	_groupCallsign = _this select 1;
	_waypointSet = _this select 2;
	_groupSpawnPoint = _sector + _groupCallsign + "Spawn" + str(_randomSpawn);
	
	// SPAWN OPFOR SET
	
	
	
		switch (_opforSetType) do 
		{
				case 0 : 
				{
				// TK MILITIA RIFLE SQUAD (Default)

					// GROUP
					_opforSet = createGroup EAST;

					// UNITS

					// Group Leader
					
					_createUnit="TK_INS_Soldier_TL_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Sergeant"];

					// Rifleman 
					_createUnit="TK_INS_Soldier_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];

					// Rifleman 
					_unit3 = _sector + _groupCallsign + "3";
					_createUnit="TK_INS_Soldier_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet3 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];

					// Rifleman with FN FAL 
					_unit4 = _sector + _groupCallsign + "4";
					_createUnit="TK_INS_Soldier_4_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet4 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];

					// BONESETTER
					_unit5 = _sector + _groupCallsign + "5";
					_createUnit="TK_INS_Bonesetter_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet5 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];
				};
				
				case 1 : 
				{
				// TK MILITIA ANTI TANK TEAM (Default)

					// GROUP
					_opforSet = createGroup EAST;

					// UNITS

					// Group Leader
					_createUnit="TK_INS_Soldier_TL_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Sergeant"];
					
					// AT GUNNER 
					_createUnit="TK_INS_Soldier_AT_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];

					// AT GUNNER 
					_createUnit="TK_INS_Soldier_AT_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet3 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];

					// Rifleman with FN FAL
					_createUnit="TK_INS_Soldier_4_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet4 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];

					// BONESETTER
					_createUnit="TK_INS_Bonesetter_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet5 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];
				};
				
				case 2 : 
				{
				// TK MILITIA MG TEAM (Default)

					// GROUP
					_opforSet = createGroup EAST;
					
					// UNITS

					// Group Leader
					_createUnit="TK_INS_Soldier_TL_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Sergeant"];

					// Rifleman 
					_createUnit="TK_INS_Soldier_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];

					// Machinegunner 
					_createUnit="TK_INS_Soldier_MG_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet3 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];

					// Machinegunner
					_createUnit="TK_INS_Soldier_MG_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet4 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];

					// Automatic Rifleman 
					_createUnit="TK_INS_Soldier_AR_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet5 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];
					
					// Rifleman
					_createUnit="TK_INS_Soldier_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet6 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];
				};
				
				case 3 : 
				{
				// TK MILITIA ASSAULT TEAM (Default)

					// GROUP
					_opforSet = createGroup EAST;

					// UNITS

					// Group Leader
					_createUnit="TK_INS_Soldier_TL_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Sergeant"];

					// AT GUNNER 
					_createUnit="TK_INS_Soldier_AT_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];

					// Grenadier
					_createUnit="TK_INS_Soldier_2_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet3 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];

					// Grenadier
					_createUnit="TK_INS_Soldier_2_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet4 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];

					// Rifleman with FN FAL 
					_createUnit="TK_INS_Bonesetter_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet5 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];
				};
				
				case 4 : 
				{
				// RU SPETZNATZ ASSAULT TEAM Type 1

					// GROUP
					_opforSet = createGroup EAST;

					// UNITS

					// Group Leader, Spetznaz
					_createUnit="RUS_Commander" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Sergeant"];

					// Medic, Spetznaz
					_createUnit="ACE_RUS_Soldier_Medic" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Corporal"];

					// Marksman, Spetznaz
					_createUnit="RUS_Soldier_Marksman" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet3 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Corporal"];

					// Grenadier, Spetznaz
					_createUnit="RUS_Soldier_GL" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet4 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Corporal"];

				};
				
				case 5 : 
				{
				// RU Fire TEAM Type 1

					// GROUP
					_opforSet = createGroup EAST;

					// UNITS

					// Group Leader, Russia
					_createUnit="ACE_RU_Soldier_TL_D" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Sergeant"];

					// Automatic Rifleman, Russia
					_createUnit="ACE_RU_Soldier_AR_D" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Corporal"];

					// Grenadier, Russia
					_createUnit="ACE_RU_Soldier_GL_D" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet3 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Corporal"];

					// Grenadier, Russia
					_createUnit="ACE_RU_Soldier_GL_D" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet4 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Corporal"];

				};
				
				case 6 : 
				{
				// RU Fire TEAM Type 2

					// GROUP
					_opforSet = createGroup EAST;

					// UNITS

					// Group Leader, Russia
					_createUnit="ACE_RU_Soldier_TL_D" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Sergeant"];

					// Automatic Rifleman, Russia
					_createUnit="ACE_RU_Soldier_AR_D" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Corporal"];

					// Rifleman, Russia
					_createUnit="ACE_RU_Soldier_D" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet3 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Corporal"];

					// Rifleman, Russia
					_createUnit="ACE_RU_Soldier_D" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet4 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Corporal"];

				};
				
				case 7 : 
				{
				// TK-ARMY Fire team Type 1

					// GROUP
					_opforSet = createGroup EAST;

					// UNITS

					// Group Leader, TK ARMY
					_createUnit="TK_Commander_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Sergeant"];

					// Automatic Rifleman, TK ARMY
					_createUnit="TK_Soldier_AR_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Corporal"];

					// Rifleman, TK ARMY
					_createUnit="TK_Soldier_B_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet3 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Corporal"];

					// AT Rifleman M16 / RPOM, TK ARMY
					_createUnit="ACE_TK_Soldier_RPOM" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet4 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 8, "Corporal"];
					
					// Grenadier, TK ARMY
					_createUnit="TK_Soldier_GL_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet5 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 8, "Corporal"];

				};
				
				case 8 : 
				{
				// TK-ARMY Heavy AT Team

					// GROUP
					_opforSet = createGroup EAST;

					// UNITS

					// Group Leader, TK ARMY
					_createUnit="TK_Commander_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Sergeant"];

					// Automatic Rifleman, TK ARMY
					_createUnit="TK_Soldier_AR_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Corporal"];

					// AT Rifleman M16 / RPOM, TK ARMY
					_createUnit="ACE_TK_Soldier_RPOM" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet3 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Corporal"];

					// AT Rifleman M16 / RPOM, TK ARMY
					_createUnit="ACE_TK_Soldier_RPOM" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet4 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 8, "Corporal"];
					
					// Heavy Guided AT, TK ARMY
					_createUnit="TK_Soldier_HAT_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet5 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 8, "Corporal"];

				};
				
				case 9 : 
				{
				// TK-ARMY Command Team

					// GROUP
					_opforSet = createGroup EAST;

					// UNITS

					// Group Leader, TK ARMY
					_createUnit="TK_Commander_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Sergeant"];

					// Officer, TK ARMY
					_createUnit="TK_Soldier_Officer_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Corporal"];

					// Officer, TK ARMY
					_createUnit="TK_Soldier_Officer_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet3 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Corporal"];

					// Rifleman, TK ARMY
					_createUnit="TK_Soldier_B_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet4 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 8, "Corporal"];
					
					// Medic, TK ARMY
					_createUnit="TK_Soldier_Medic_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet4 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 8, "Corporal"];
					
				};
				
				case 10 : 
				{
				// TK GUERILLA ASSAULT TEAM 2

					// GROUP
					_opforSet = createGroup EAST;

					// UNITS

					// Group Leader
					_createUnit="TK_GUE_Warlord_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Sergeant"];

					// AT GUNNER 
					_createUnit="TK_GUE_Soldier_HAT_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];

					// Assault Rifleman
					_createUnit="TK_GUE_Soldier_AR_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet3 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];

					// Grenadier w/ M16
					_createUnit="TK_GUE_Soldier_4_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet4 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];

					// Rifleman with Enfield 
					_createUnit="TK_GUE_Soldier_5_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet5 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];
					
					// Rifleman with M16 
					_createUnit="TK_GUE_Soldier_3_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet6 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];
				};
				
				case 11 : 
				{
				// TK GUERILLA ASSAULT TEAM 3

					// GROUP
					_opforSet = createGroup EAST;

					// UNITS

					// Group Leader
					_createUnit="TK_GUE_Warlord_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Sergeant"];

					// Rifleman 
					_createUnit="TK_GUE_Soldier_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];

					// Grenadier w/ M16
					_createUnit="TK_GUE_Soldier_4_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet3 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];

					// Rifleman w/ M16 
					_createUnit="TK_GUE_Soldier_3_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet4 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 0.7, "Corporal"];
				};
				
				case 12 : 
				{
				// RU MVD Strike Team

					// GROUP
					_opforSet = createGroup EAST;

					// UNITS

					// Group Leader
					_createUnit="MVD_Soldier_TL" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Sergeant"];

					// Sniper
					_createUnit="MVD_Soldier_Sniper" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Corporal"];

					// Machinegunner
					_createUnit="MVD_Soldier_MG" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet3 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Corporal"];

					// Grenadier
					_createUnit="MVD_Soldier_GL" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet4 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Corporal"];

					// Grenadier
					_createUnit="MVD_Soldier_GL" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet5 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Corporal"];
					
					// AT Operator 
					_createUnit="ACE_MVD_Soldier_RPOM" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet6 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Corporal"];
					
					// AT Operator 
					_createUnit="MVD_Soldier_AT" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet7 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Corporal"];
					
					// Operator 
					_createUnit="ACE_MVD_Soldier_RPOM" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet8 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Corporal"];
					
					// Operator 
					_createUnit="MVD_Soldier" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet9 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Corporal"];
					
					// Operator 
					_createUnit="MVD_Soldier" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet10 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 1, "Corporal"];
				};
				
				case 13 : 
				{
				// RU Heavy Inf Section

					// GROUP
					_opforSet = createGroup EAST;

					// UNITS

					// Group Leader
					_createUnit="ACE_RU_Soldier_Officer_D" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Sergeant"];

					// Marksman
					_createUnit="ACE_RU_Soldier_Marksman_D" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Corporal"];

					// Machinegunner
					_createUnit="ACE_RU_Soldier_MG_D" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet3 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Corporal"];

					// Grenadier
					_createUnit="ACE_RU_Soldier_GL_D" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet4 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Corporal"];

					// Grenadier
					_createUnit="ACE_RU_Soldier_GL_D" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet5 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Corporal"];
					
					// AT Heavy 
					_createUnit="ACE_RU_Soldier_HAT_D" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet6 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Corporal"];
					
					// AT  
					_createUnit="ACE_RU_Soldier_AT_D" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet7 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Corporal"];
					
					// Team Leader  
					_createUnit="ACE_RU_Soldier_TL_D" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet8 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Corporal"];
					
					// AT
					_createUnit="ACE_RU_Soldier_RPOM_D" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet9 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Corporal"];
					
					// Automatic Rifleman 
					_createUnit="ACE_RU_Soldier_AR_D" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet10 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Corporal"];
					
					// Rifleman 
					_createUnit="ACE_RU_Soldier_D" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet11 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Corporal"];
					
					// Rifleman 
					_createUnit="ACE_RU_Soldier_Medic_D" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet12 = this; this setVariable ['sector', _sector, true]; opforTrashbin set [count opforTrashbin, this];", 9, "Corporal"];
				};
				
				
								
					
		};
		
		publicVariable "opforTrashbin";
		
		
		// GENERATE WAYPOINTS
		
		// Get first marker name
		_randomWaypointNumber = round(random 15);
		_marker_wp = _sector + _waypointSet + "WP" + str(_randomWaypointNumber);			
		
		// Loop generates waypoints and maps them to random markers
		_i = 1; While {_i<69} do
		{
			_wp = _opforSet addWaypoint [getMarkerPos _marker_wp, 2];
			_wp  setWaypointType "MOVE";
			_wp setWaypointFormation "WEDGE";
			_wp setWaypointBehaviour "AWARE";
			_wp setWaypointSpeed "NORMAL";
			_wp setWaypointStatements ["true", ""];
			_wp setWaypointTimeout [0, 25, 120];
			
			// Get next marker name
			_randomWaypointNumber = round(random 15);			
			_marker_wp = _sector + _waypointSet + "WP" + str(_randomWaypointNumber);
			
			_i=_i+1;
		};
		
};

setCreating = false;
publicVariable "setCreating";

