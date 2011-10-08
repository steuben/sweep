
if (isServer) then 

{
	_opforSet = "";
	_opforSetType = round(random 5);
	_randomSpawn = round(random 2);
	_sector = _this select 0;
	_groupCallsign = _this select 1;
	_waypointSet = _this select 2;
	_groupSpawnPoint = _sector + _groupCallsign + "Spawn" + str(_randomSpawn);
	
	_armorChance = round(random 100);
	_canHazArmor = 0;
	if(_armorChance < 50) then
	{
		_canHazArmor = 1;
	};
	
	// SPAWN OPFOR SET	
	switch (_canHazArmor) do 
	{
			case 0 : 
			{
			
			// LIGHT TO MEDIUM VEHICLES
			
				switch (_opforSetType) do 
				{
					case 0 : 
					{
						// TK INS ARMED OFFROAD
							
						// GROUP
						_opforSet = createGroup EAST;

						// UNITS
						
						// Offroad
						_Victor1 = "Pickup_PK_INS" createVehicle getMarkerPos _groupSpawnPoint;
						_Victor1 setVariable ["sector", _sector, true];
						opforTrashbin set [count opforTrashbin, _Victor1];

						// Group Leader
						_createUnit="TK_INS_Soldier_TL_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true];  opforTrashbin set [count opforTrashbin, this]; this moveInGunner _Victor1;", 0.7, "Sergeant"];
								
						// Rifleman 
						_createUnit="TK_INS_Soldier_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true];  opforTrashbin set [count opforTrashbin, this]; this moveInDriver _Victor1;", 0.7, "Sergeant"];
							
					};
					
					case 1 : 
					{
						// TK ARMY M113A3
							
						// GROUP
						_opforSet = createGroup EAST;

						// UNITS
						
						// M113A2
						_Victor1 = "M113_TK_EP1" createVehicle getMarkerPos _groupSpawnPoint;
						_Victor1 setVariable ["sector", _sector, true];
						opforTrashbin set [count opforTrashbin, _Victor1];

						// Group Leader
						_createUnit="TK_Soldier_Crew_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true];  opforTrashbin set [count opforTrashbin, this]; this moveInGunner _Victor1;", 0.7, "Sergeant"];
								
						// Rifleman 
						_createUnit="TK_Soldier_Crew_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true];  opforTrashbin set [count opforTrashbin, this]; this moveInDriver _Victor1;", 0.7, "Sergeant"];

					};
					
					case 2 : 
					{
						// TK ARMY OFFROAD DSHKM
							
						// GROUP
						_opforSet = createGroup EAST;

						// UNITS
						
						// UAZ AGS
						_Victor1 = "Offroad_DSHKM_INS" createVehicle getMarkerPos _groupSpawnPoint;
						_Victor1 setVariable ["sector", _sector, true];
						opforTrashbin set [count opforTrashbin, _Victor1];

						// Group Leader
						_createUnit="TK_Soldier_Officer_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true];  opforTrashbin set [count opforTrashbin, this]; this moveInGunner _Victor1;", 0.7, "Sergeant"];
								
						// Rifleman 
						_createUnit="TK_Soldier_GL_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true];  opforTrashbin set [count opforTrashbin, this]; this moveInDriver _Victor1;", 0.7, "Sergeant"];

					};
					
					case 3 : 
					{
						// UAZ DSHKM
							
						// GROUP
						_opforSet = createGroup EAST;

						// UNITS
						
						// UAZ_MG_INS 
						_Victor1 = "UAZ_MG_INS" createVehicle getMarkerPos _groupSpawnPoint;
						_Victor1 setVariable ["sector", _sector, true];
						opforTrashbin set [count opforTrashbin, _Victor1];

						// Group Leader
						_createUnit="TK_GUE_Soldier_TL_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true];  opforTrashbin set [count opforTrashbin, this]; this moveInGunner _Victor1;", 0.8, "Sergeant"];
								
						// Rifleman 
						_createUnit="TK_GUE_Soldier_4_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true];  opforTrashbin set [count opforTrashbin, this]; this moveInDriver _Victor1;", 0.7, "Sergeant"];

					};
					
					case 4 : 
					{
						// BTR-40
							
						// GROUP
						_opforSet = createGroup EAST;

						// UNITS
						
						// BTR-40
						_Victor1 = "BTR40_MG_TK_GUE_EP1" createVehicle getMarkerPos _groupSpawnPoint;
						_Victor1 setVariable ["sector", _sector, true];
						opforTrashbin set [count opforTrashbin, _Victor1];

						// Group Leader
						_createUnit="TK_Commander_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true];  opforTrashbin set [count opforTrashbin, this]; this moveInGunner _Victor1;", 0.8, "Sergeant"];
								
						// Rifleman 
						_createUnit="TK_Soldier_B_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true];  opforTrashbin set [count opforTrashbin, this]; this moveInDriver _Victor1;", 0.7, "Sergeant"];

					};
					
					case 5 : 
					{
						// Land Rover (M2)
							
						// GROUP
						_opforSet = createGroup EAST;

						// UNITS
						
						// Land Rover (M2)
						_Victor1 = "LandRover_MG_TK_INS_EP1" createVehicle getMarkerPos _groupSpawnPoint;
						_Victor1 setVariable ["sector", _sector, true];
						opforTrashbin set [count opforTrashbin, _Victor1];

						// Group Leader
						_createUnit="TK_GUE_Warlord_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true];  opforTrashbin set [count opforTrashbin, this]; this moveInGunner _Victor1;", 0.8, "Sergeant"];
								
						// Rifleman 
						_createUnit="TK_GUE_Soldier_3_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true];  opforTrashbin set [count opforTrashbin, this]; this moveInDriver _Victor1;", 0.7, "Sergeant"];

					};
					
				};
				
			};
				
			case 1 : 
			{
			
			// ARMORED/TRACKED VEHICLES
			
				_opforSetType = round(random 3);			
				
				switch (_opforSetType) do 
				{
					case 0 : 
					{
						// TK T34

						// GROUP
						_opforSet = createGroup EAST;

						// UNITS
							
						// TANK
						_Victor1 = "T34_TK_EP1" createVehicle getMarkerPos _groupSpawnPoint;							
						_Victor1 setVariable ["sector", _sector, true];
						opforTrashbin set [count opforTrashbin, _Victor1];
						
						// Group Leader
						_createUnit="TK_INS_Soldier_TL_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true];  opforTrashbin set [count opforTrashbin, this]; this moveInCommander _Victor1;", 0.7, "Sergeant"];
								
						// Rifleman 
						_createUnit="TK_INS_Soldier_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true];  opforTrashbin set [count opforTrashbin, this]; this moveInDriver _Victor1;", 0.7, "Corporal"];
								
						// Rifleman 
						_createUnit="TK_INS_Soldier_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet3 = this; this setVariable ['sector', _sector, true];  opforTrashbin set [count opforTrashbin, this]; this moveInGunner _Victor1;", 0.7, "Corporal"];

					};
						
					case 1 : 
					{
						// TK T55

						// GROUP
						_opforSet = createGroup EAST;

						// UNITS
							
						// TANK
						_Victor1 = "T55_TK_EP1" createVehicle getMarkerPos _groupSpawnPoint;
						_Victor1 setVariable ["sector", _sector, true];
						opforTrashbin set [count opforTrashbin, _Victor1];

							// Group Leader
							_createUnit="TK_INS_Soldier_TL_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true];  opforTrashbin set [count opforTrashbin, this]; this moveInCommander _Victor1;", 0.7, "Sergeant"];
							
							// Rifleman 
							_createUnit="TK_INS_Soldier_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true];  opforTrashbin set [count opforTrashbin, this]; this moveInDriver _Victor1;", 0.7, "Corporal"];
								
							// Rifleman 
							_createUnit="TK_INS_Soldier_EP1" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet3 = this; this setVariable ['sector', _sector, true];  opforTrashbin set [count opforTrashbin, this]; this moveInGunner _Victor1;", 0.7, "Corporal"];

					};
					
					
					case 2 : 
					{
						// Offroad SPG-9

						// GROUP
						_opforSet = createGroup EAST;

						// UNITS
							
						// ACE_Offroad_SPG9_INS
						_Victor1 = "ACE_Offroad_SPG9_INS" createVehicle getMarkerPos _groupSpawnPoint;
						_Victor1 setVariable ["sector", _sector, true];
						opforTrashbin set [count opforTrashbin, _Victor1];

							// MVD Operator 
							_createUnit="MVD_Soldier" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true];  opforTrashbin set [count opforTrashbin, this]; this moveInDriver _Victor1;", 0.5, "Corporal"];
								
							// MVD Operator 
							_createUnit="MVD_Soldier" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet3 = this; this setVariable ['sector', _sector, true];  opforTrashbin set [count opforTrashbin, this]; this moveInGunner _Victor1;", 0.5, "Corporal"];

					};
					
					case 3 : 
					{
						// RU BTR-70

						// GROUP
						_opforSet = createGroup EAST;

						// UNITS
							
						// BMD-1P
						_Victor1 = "ACE_BTR70_RU" createVehicle getMarkerPos _groupSpawnPoint;
						_Victor1 setVariable ["sector", _sector, true];
						opforTrashbin set [count opforTrashbin, _Victor1];

							// Group Leader
							_createUnit="RU_Soldier_Crew" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true];  opforTrashbin set [count opforTrashbin, this]; this moveInCommander _Victor1;", 0.5, "Sergeant"];
							
							// CREW 
							_createUnit="RU_Soldier_Crew" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true];  opforTrashbin set [count opforTrashbin, this]; this moveInDriver _Victor1;", 0.5, "Corporal"];
								
							// CREW
							_createUnit="RU_Soldier_Crew" createUnit [getMarkerPos _groupSpawnPoint, _opforSet, "_opforSet3 = this; this setVariable ['sector', _sector, true];  opforTrashbin set [count opforTrashbin, this]; this moveInGunner _Victor1;", 0.5, "Corporal"];

					};
					
				};
								
			};
					
	};
		
	// GENERATE WAYPOINTS
		
	// Get first marker name
	
	_randomWaypointNumber = round(random 15);
	if (_waypointSet == "Vehicle") then
	{
		_randomWaypointNumber = round(random 12);
	};
	
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
			_wp setWaypointTimeout [0, 0, 0];
			
			// Get next marker name
			
			_randomWaypointNumber = round(random 15);
			if (_waypointSet == "Vehicle") then
			{
				_randomWaypointNumber = round(random 12);
			};	
			
			_marker_wp = _sector + _waypointSet + "WP" + str(_randomWaypointNumber);
			
			_i=_i+1;
	};
		
};

setCreating = false;
publicVariable "setCreating";
