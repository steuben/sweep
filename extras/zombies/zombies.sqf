
private ["_civs", "_grp", "_zombiesPerWave"];

if (isNil "gnrf_zombies") then 
{
	gnrf_zombies = [];
	publicVariable "gnrf_zombies";

	//clear map
	_civs = units gnrf_civSet + units gnrf_civBuilding_grp;
	[_civs] call CBA_fnc_deleteEntity;
	[gnrf_civVehicles] call CBA_fnc_deleteEntity;
	
	//count kills / delete bodies
	[] execVM "extras\zombies\bodyCount.sqf";

};

//initalize vars
_spawnPos = _this select 0;
_targetPos = _this select 1;
_zombiesPerWave = _this select 2;
_waveInterval = _this select 3;
_maxZombies = _this select 4;
if (count _this >= 6) then 
{
	//broadcast temporary respawnPos
	gnrf_zombiesRespawnPos = _this select 5;
	publicVariable "gnrf_zombiesRespawnPos";	
};

//main loop
while {!isNil "gnrf_zombies"} do 
{	
	if ((count gnrf_zombies) < _maxZombies) then 
	{
		_grp = [_spawnPos,_zombiesPerWave,_targetPos] call CHN_UNDEAD_fn_CRTZEDGRPMV;
		gnrf_zombies = gnrf_zombies + units _grp;
	};
	
	sleep _waveInterval;
};

[-2, {gnrf_zombiesRespawnPos = nil}] call CBA_fnc_globalExecute; 

