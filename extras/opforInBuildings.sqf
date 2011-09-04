
		if (!isNil "grnf_villaIsTriggered") exitWith {};		
		grnf_villaIsTriggered = true;
		
		[-1, {titleText ["Enemy presence detected", "PLAIN"]}] call CBA_fnc_globalExecute;	
		
		_spawnPos = _this select 0;
		_spawnPos = [_spawnPos select 0, _spawnPos select 1, 0];
		_spawnPos = _spawnPos findEmptyPosition [1,20, "Man"];
		_sector = "house";
		_units = [];
		_extras = [];
		
		// GROUP
		_opforSet = createGroup EAST;

		// UNITS

		// Group Leader
		_createUnit="ACE_RU_Soldier_Officer_D" createUnit [_spawnPos, _opforSet, "_opforSet_Leader = this; this setVariable ['sector', _sector, true]; _units set [count _units, this];", 9, "Sergeant"];

		// Marksman
		_createUnit="ACE_RU_Soldier_Marksman_D" createUnit [_spawnPos, _opforSet, "_opforSet2 = this; this setVariable ['sector', _sector, true]; _units set [count _units, this];", 9, "Corporal"];

		// Machinegunner
		_createUnit="ACE_RU_Soldier_MG_D" createUnit [_spawnPos, _opforSet, "_opforSet3 = this; this setVariable ['sector', _sector, true]; _units set [count _units, this];", 9, "Corporal"];

		// Grenadier
		_createUnit="ACE_RU_Soldier_GL_D" createUnit [_spawnPos, _opforSet, "_opforSet4 = this; this setVariable ['sector', _sector, true]; _units set [count _units, this];", 9, "Corporal"];

		// Grenadier
		_createUnit="ACE_RU_Soldier_GL_D" createUnit [_spawnPos, _opforSet, "_opforSet5 = this; this setVariable ['sector', _sector, true]; _units set [count _units, this];", 9, "Corporal"];
					
		// AT Heavy 
		_createUnit="ACE_RU_Soldier_HAT_D" createUnit [_spawnPos, _opforSet, "_opforSet6 = this; this setVariable ['sector', _sector, true]; _units set [count _units, this];", 9, "Corporal"];
					
		// AT  
		_createUnit="ACE_RU_Soldier_AT_D" createUnit [_spawnPos, _opforSet, "_opforSet7 = this; this setVariable ['sector', _sector, true]; _units set [count _units, this];", 9, "Corporal"];
					
		// Team Leader  
		_createUnit="ACE_RU_Soldier_TL_D" createUnit [_spawnPos, _opforSet, "_opforSet8 = this; this setVariable ['sector', _sector, true]; _units set [count _units, this];", 9, "Corporal"];
					
		// AT
		_createUnit="ACE_RU_Soldier_RPOM_D" createUnit [_spawnPos, _opforSet, "_opforSet9 = this; this setVariable ['sector', _sector, true]; _units set [count _units, this];", 9, "Corporal"];
					
		// Automatic Rifleman 
		_createUnit="ACE_RU_Soldier_AR_D" createUnit [_spawnPos, _opforSet, "_opforSet10 = this; this setVariable ['sector', _sector, true]; _units set [count _units, this];", 9, "Corporal"];
					
		// Rifleman 
		_createUnit="ACE_RU_Soldier_D" createUnit [_spawnPos, _opforSet, "_opforSet11 = this; this setVariable ['sector', _sector, true]; _units set [count _units, this];", 9, "Corporal"];
					
		// Rifleman 
		_createUnit="ACE_RU_Soldier_D" createUnit [_spawnPos, _opforSet, "_opforSet12 = this; this setVariable ['sector', _sector, true]; _units set [count _units, this];", 9, "Corporal"];
		
		// Rifleman - static gunner
		_createUnit="ACE_RU_Soldier_D" createUnit [_spawnPos, _opforSet, "opforSet13 = this; this setVariable ['sector', _sector, true]; _extras set [count _extras, this];", 9, "Corporal"];
		_staticMG1 = "DSHKM_TK_GUE_EP1" createVehicle [0,0,0];
		_staticMG1 setPosASL [4845.69,4589.48,41.9963];
		_staticMG1 setDir 225;
		opforSet13 moveInGunner _staticMG1;		
		
		_mag = (getArray (configFile >> "CfgVehicles" >> typeOf _staticMG1 >> "Turrets" >> "MainTurret" >> "magazines")) select 0;	
		_staticMG1 setVehicleAmmo 0;
		{_staticMG1 addMagazine _mag} forEach [1,2,3,4];
		
		// Rifleman - static gunner
		_createUnit="ACE_RU_Soldier_D" createUnit [_spawnPos, _opforSet, "opforSet14 = this; this setVariable ['sector', _sector, true]; _extras set [count _extras, this];", 9, "Corporal"];
		_staticMG2 = "DSHKM_TK_GUE_EP1" createVehicle [0,0,0];
		_staticMG2 setPosASL [4855.6,4606.34,45.4511];
		_staticMG2 setDir 45;
		opforSet14 moveInGunner _staticMG2;
		
		_mag = (getArray (configFile >> "CfgVehicles" >> typeOf _staticMG2 >> "Turrets" >> "MainTurret" >> "magazines")) select 0;	
		_staticMG2 setVehicleAmmo 0;
		{_staticMG2 addMagazine _mag} forEach [1,2,3,4];		
		
		_opforSet enableAttack false;
		
				
		//////add Killed EH´s
		_allUnits = _units + _extras;
		{_x addMPEventhandler ["MPKilled", "if (isServer) then {_this select 0 removeAllEventHandlers 'MPkilled'; [_this select 0, _this select 1] spawn killDetector_compiled;}"];} forEach _allUnits;
		
		{[_x, _spawnPos] spawn gnrf_moveInBuilding_fnc} forEach _units;
		waitUntil {sleep 1.23; ({alive _x} count _allUnits) < 1};
		
		[-1, {titleText ["Building Cleared", "PLAIN"]}] call CBA_fnc_globalExecute;	
		[] execVM "loadout\reinforcement.sqf";

		