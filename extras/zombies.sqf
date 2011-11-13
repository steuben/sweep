
private ["_civs", "_munPos", "_livingDead", "_aliveCnt", "_grp", "_tmpDead", "_tmpAlive", "_z", "_totalZombies", "_zombiesPerWave", "_whackedZombies", "_unit"];

gnrf_zombiesOn = true;
publicVariable "gnrf_zombiesOn";

//clear map
_civs = units gnrf_civSet + units gnrf_civBuilding_grp;
[_civs] call CBA_fnc_deleteEntity;
[gnrf_civVehicles] call CBA_fnc_deleteEntity;

//initalize vars
_spawnPos = _this select 0;
_targetPos = _this select 1;
_zombiesPerWave = _this select 2;
_waveInterval = _this select 3;
_maxZombies = _this select 4;
if (count _this >= 6) then 
{
	//get Ammo
	_munPos = _this select 5;
	utilityVictor setPosASL _munPos;
};

if (count _this >= 7) then 
{
	//broadcast temporary respawnPos
	gnrf_zombiesRespawnPos = _this select 6;
	publicVariable "gnrf_zombiesRespawnPos";	
};

_livingDead = [];
_aliveCnt = 0;
_totalCnt = 0;
_whackedCnt = 0;
_tmpDead = [];
while {!isNil "gnrf_zombiesOn"} do 
{	
	if (_aliveCnt < _maxZombies) then 
	{
		_grp = [_spawnPos,_zombiesPerWave,_targetPos] call CHN_UNDEAD_fn_CRTZEDGRPMV;
		_livingDead = _livingDead + units _grp;
		_totalCnt = _totalCnt + _zombiesPerWave;
	};
	
	sleep _waveInterval;
	
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
	
	_str = format ["bodies: %1", count _tmpDead]; ///////
	["gnrf_clientExecute", ["player", "sideChat", _str]] call CBA_fnc_globalEvent; //////////
	
	if (count _tmpDead >= 100) then 
	{
		_del = [];
		for "_i" from 0 to round(count _tmpDead / 2) do 
		{
			_e = _tmpDead select _i;
			_del set [count _del, _e];
		};
	
		_str = format ["to be deleted: %1", count _del]; ///////
		["gnrf_clientExecute", ["player", "sideChat", _str]] call CBA_fnc_globalEvent; //////////
		
		_tmpDead = _tmpDead - _del;
		[_del] call CBA_fnc_deleteEntity;
		
		_str = format ["bodies new: %1", count _tmpDead]; ///////
		["gnrf_clientExecute", ["player", "sideChat", _str]] call CBA_fnc_globalEvent; //////////
	};			
};

[-2, {gnrf_zombiesRespawnPos = nil}] call CBA_fnc_globalExecute; 

