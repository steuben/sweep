

	private ["_unit", "_pos", "_posArray", "_someH", "_building", "_i", "_done"]; 
	_unit = _this select 0; 
	_pos = _this select 1; 
	if (isNil "_pos") then {_pos = getPos _unit};
	
	_someH = createVehicle ["heliHempty", _pos, [], 0, "CAN_COLLIDE"];	
	_building = nearestBuilding _someH;
	deleteVehicle _someH;
	
	_done = false;
	_i = 0;
	_posArray = [];
	
	while {!_done} do {
		
		_tmpPos = _building buildingPos _i;
		if (count (_tmpPos - [0,0,0]) != 0) then {
		
			_posArray set [count _posArray, _tmpPos];
			_i = _i + 1;
		
		} else {
		
			_done = true;
		};
	};
	
	_unit disableAI "TARGET"; ///
	while {alive _unit} do {
	
//		player sideChat format ["%1 ### %2", _unit, _posArray];
		_pos = _posArray call BIS_fnc_selectRandom;
		_unit doMove _pos; 
		waitUntil {sleep 0.11; (_unit distance _pos) < 1}; 
//		player sideChat "boing!";
//		_unit disableAI "TARGET";
		if (count _posArray <= 1) exitWith {};
		sleep random 60;
//		_unit enableAI "TARGET"; 
	
	};
