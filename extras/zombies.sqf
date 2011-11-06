
private ["_civs", "_munPos", "_livingDead", "_aliveCnt", "_grp", "_tmp", "_z", "_totalZombies", "_zombiesPerWave", "_whackedZombies"];

gnrf_zombiesOn = true;
publicVariable "gnrf_zombiesOn";
_civs = units gnrf_civSet + units gnrf_civBuilding_grp;
{_x setDamage 1} forEach _civs;

_munPos = [4854.33,4595.57,45.468];
utilityVictor setPosASL _munPos;
_livingDead = [];
_aliveCnt = 0;
_totalCnt = 0;
_whackedCnt = 0;
_zombiesPerWave = 15;
while {!isNil "gnrf_zombiesOn"} do 
{	
	if (_aliveCnt < 200) then 
	{
		_grp = [[4569,4361,0],_zombiesPerWave,[4844,4594,45.4645]] call CHN_UNDEAD_fn_CRTZEDGRPMV;
		_livingDead = _livingDead + units _grp;
		_totalCnt = _totalCnt + _zombiesPerWave;
	};
	
	sleep 30;
	
	_tmp = [];
	for "_i" from 0 to (count _livingDead)-1 do 
	{		
		_z = _livingDead select _i;
		if (alive _z) then {_tmp set [count _tmp, _z]};
	};
	
	_livingDead =+ _tmp;
	_aliveCnt = count _livingDead;
	_whackedCnt = _totalCnt - _aliveCnt;
	player SideChat format ["Walking Dead: %1 - Zombies Whacked: %2", _aliveCnt, _whackedCnt];
};



