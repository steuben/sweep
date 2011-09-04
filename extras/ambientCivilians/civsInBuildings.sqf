
private ["_unit", "_pos", "_posArray", "_someH", "_building", "_i", "_done", "_homeless", "_buildings"]; 
_homeless = [];
_cnt1 = count gnrf_housedCivs;
for "_i" from 0 to (_cnt1 -1) do {
	
	_unit = gnrf_housedCivs select _i;	
	_building = gnrf_allBuildings call BIS_fnc_selectRandom;
	_targetPos = _building call BIS_fnc_selectRandom;
	_unit setVariable ["building", _building];
	_unit setVariable ["targetPos", _targetPos];
	_unit setPos _targetPos;
	_unit forceSpeed 1;
};


_cnt3 = 0;
while {_cnt1 > 0} do {

	_unitArray = [];
	{if (alive _x) then {_unitArray set [count _unitArray, _x]}} forEach gnrf_housedCivs;
	_cnt1 = count _unitArray;
	for "_i" from 0 to (_cnt1 -1) do {
	
		_unit = _unitArray select _i;
		_targetPos = _unit getVariable "targetPos"; 
		_dis = (getPos _unit) distance _targetPos;
		if (_dis < 5) then {
		
			[_unit] spawn gnrf_civDisToTarget_fnc;
			gnrf_housedCivs = gnrf_housedCivs - [_unit];

		} else {
			
			if (_cnt3 > 8) then {_unit domove (_targetPos)};
		};
		
		_timer = 2 / _cnt1;
		sleep _timer;
		
		_cnt3 = _cnt3 + 1;
		if (_cnt3 > 9) then {_cnt3 = 0};
	
	};
};

