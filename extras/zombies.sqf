
private ["_civs", "_munPos", "_livingDead", "_aliveCnt", "_grp", "_tmpDead", "_tmpAlive", "_z", "_totalZombies", "_zombiesPerWave", "_whackedZombies", "_unit"];

gnrf_zombiesOn = true;
publicVariable "gnrf_zombiesOn";
_civs = units gnrf_civSet + units gnrf_civBuilding_grp;
[_civs] call CBA_fnc_deleteEntity;
[gnrf_civVehicles] call CBA_fnc_deleteEntity;

_munPos = [4854.33,4595.57,45.468];
utilityVictor setPosASL _munPos;

_livingDead = [];
_aliveCnt = 0;
_totalCnt = 0;
_whackedCnt = 0;
_zombiesPerWave = 15;
_tmpDead = [];
while {!isNil "gnrf_zombiesOn"} do 
{	
	if (_aliveCnt < 200) then 
	{
		_grp = [[4569,4361,0],_zombiesPerWave,[4844,4594,45.4645]] call CHN_UNDEAD_fn_CRTZEDGRPMV;
		_livingDead = _livingDead + units _grp;
		_totalCnt = _totalCnt + _zombiesPerWave;
	};
	
	sleep 30;
	
	_tmpAlive = [];
	for "_i" from 0 to (count _livingDead)-1 do 
	{		
		_z = _livingDead select _i;
		if (alive _z) then {_tmpAlive set [count _tmpAlive, _z]} else {_tmpDead set [count _tmpDead, _z]};
	};
	
	_livingDead =+ _tmpAlive;
	_aliveCnt = count _livingDead;
	_whackedCnt = _totalCnt - _aliveCnt;
	_str = format ["Walking Dead: %1 - Zombies Whacked: %2", _aliveCnt, _whackedCnt];
	["gnrf_clientExecute", ["player", "sideChat", _str]] call CBA_fnc_globalEvent;
	
	if (count _tmpDead >= 150) then 
	{
		_del = [];
		for "_i" from 0 to 49 do 
		{
			_e = _tmpDead select _i;
			_del set [count _del, _e];
		};
		
		_tmpDead = _tmpDead - _del;
		[_del] call CBA_fnc_deleteEntity;
	};
			
};

