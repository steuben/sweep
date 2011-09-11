
		if (!isNil "grnf_villaIsTriggered") exitWith {};		
		grnf_villaIsTriggered = true;
		
		[-1, {titleText ["Enemy presence detected", "PLAIN"]}] call CBA_fnc_globalExecute;	
		
		_spawnPos = _this select 0;
		_spawnPos = [_spawnPos select 0, _spawnPos select 1, 0];
		_spawnPos = _spawnPos findEmptyPosition [1,20, "Man"];
		
		// GROUP
		_opforSet1 = createGroup EAST;
		_opforSet2 = createGroup EAST;
		_opforSet3 = createGroup EAST;
		// UNITS

		////defending group
		// Group Leader
		_createUnit="ACE_RU_Soldier_Officer_D" createUnit [_spawnPos, _opforSet1, "", 9, "Sergeant"];

		// Marksman
		_createUnit="ACE_RU_Soldier_Marksman_D" createUnit [_spawnPos, _opforSet1, "", 9, "Corporal"];

		// Automatic Rifleman 
		_createUnit="ACE_RU_Soldier_AR_D" createUnit [_spawnPos, _opforSet1, "", 9, "Corporal"];
					
		// Rifleman 
		_createUnit="ACE_RU_Soldier_D" createUnit [_spawnPos, _opforSet1, "", 9, "Corporal"];
					
		// Rifleman 
		_createUnit="ACE_RU_Soldier_D" createUnit [_spawnPos, _opforSet1, "", 9, "Corporal"];
		
		// Rifleman 
		_createUnit="ACE_RU_Soldier_D" createUnit [_spawnPos, _opforSet1, "", 9, "Corporal"];

		// Grenadier
		_createUnit="ACE_RU_Soldier_GL_D" createUnit [_spawnPos, _opforSet1, "", 9, "Corporal"];


		////attacking group
		// Team Leader  
		_createUnit="ACE_RU_Soldier_TL_D" createUnit [_spawnPos, _opforSet2, "", 9, "Corporal"];
		
		// AT Heavy 
		_createUnit="ACE_RU_Soldier_HAT_D" createUnit [_spawnPos, _opforSet2, "", 9, "Corporal"];
		
		// Machinegunner
		_createUnit="ACE_RU_Soldier_MG_D" createUnit [_spawnPos, _opforSet2, "", 9, "Corporal"];
		
		// AT
		_createUnit="ACE_RU_Soldier_RPOM_D" createUnit [_spawnPos, _opforSet2, "", 9, "Corporal"];
		
		// AT  
		_createUnit="ACE_RU_Soldier_AT_D" createUnit [_spawnPos, _opforSet2, "", 9, "Corporal"];
					
		// Rifleman 
		_createUnit="ACE_RU_Soldier_D" createUnit [_spawnPos, _opforSet2, "", 9, "Corporal"];

		// Grenadier
		_createUnit="ACE_RU_Soldier_GL_D" createUnit [_spawnPos, _opforSet2, "", 9, "Corporal"];
		
		// Grenadier
		_createUnit="ACE_RU_Soldier_GL_D" createUnit [_spawnPos, _opforSet2, "", 9, "Corporal"];
		
		////statics
		//mg1
		_createUnit = "ACE_RU_Soldier_D" createUnit [_spawnPos, _opforSet3, "grnf_currentUnit = this;", 9, "Corporal"];
		_staticMG1 = "DSHKM_TK_GUE_EP1" createVehicle [0,0,0];
		_staticMG1 setPosASL [4845.69,4589.48,41.9963];
		_staticMG1 setDir 225;
		grnf_currentUnit moveInGunner _staticMG1;				
		grnf_currentUnit doWatch [4808.41,4527.07,5];
		_mag = (getArray (configFile >> "CfgVehicles" >> typeOf _staticMG1 >> "Turrets" >> "MainTurret" >> "magazines")) select 0;	
		_staticMG1 setVehicleAmmo 0;
		{_staticMG1 addMagazine _mag} forEach [1,2,3,4];
		
		//mg2
		_createUnit = "ACE_RU_Soldier_D" createUnit [_spawnPos, _opforSet3, "grnf_currentUnit = this;", 9, "Corporal"];
		_staticMG2 = "DSHKM_TK_GUE_EP1" createVehicle [0,0,0];
		_staticMG2 setPosASL [4844.62,4609.73,45.4529];
		_staticMG2 setDir 45;
		grnf_currentUnit moveInGunner _staticMG2;		
		grnf_currentUnit doWatch [4875.43,4684.39,0];
		_mag = (getArray (configFile >> "CfgVehicles" >> typeOf _staticMG2 >> "Turrets" >> "MainTurret" >> "magazines")) select 0;	
		_staticMG2 setVehicleAmmo 0;
		{_staticMG2 addMagazine _mag} forEach [1,2,3,4];		
		
		_opforSet1 enableAttack false;
		_opforSet2 setCombatMode "RED";
				
		//////add Killed EH´s
		_allUnits = (units _opforSet1) + (units _opforSet2) + (units _opforSet3);
		_mostUnits = (units _opforSet1) + (units _opforSet2);
		{_x addMPEventhandler ["MPKilled", "if (isServer) then {_this select 0 removeAllEventHandlers 'MPkilled'; [_this select 0, _this select 1] spawn killDetector_compiled;}"];} forEach _allUnits;
		
		{[_x] spawn gnrf_moveInBuilding_fnc} forEach _mostUnits;
		waitUntil {sleep 1.23; ({alive _x} count _allUnits) < 1};
		
		[-1, {titleText ["Building Cleared", "PLAIN"]}] call CBA_fnc_globalExecute;	
		[] execVM "loadout\reinforcement.sqf";
		grnf_villaIsTriggered = nil;

		