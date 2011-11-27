
private ["_aliveCnt", "_tmpAlive", "_z", "_totalKills", "_delCnt", "_deadOnes", "_str", "_del", "_e"];

_aliveCnt = 0;
_totalKills = 0;
_delCnt = 0;
_deadOnes = [];
while {!isNil "gnrf_zombies"} do 
{
	sleep 30;
	
	_tmpAlive = [];
	
	//sort out killed zombies
	for "_i" from 0 to (count gnrf_zombies)-1 do 
	{		
		_z = gnrf_zombies select _i;
		if (alive _z) then {_tmpAlive set [count _tmpAlive, _z]} else {_deadOnes set [count _deadOnes, _z]; deleteGroup group _z};
	};

	gnrf_zombies =+ _tmpAlive; 
	_aliveCnt = count gnrf_zombies;//nr of zombies
	_totalKills = _delCnt + count _deadOnes; //nr of kills

	_str = format ["Walking Dead: %1 - Zombies Whacked: %2", _aliveCnt, _totalKills];
	["gnrf_clientExecute", ["player", "sideChat", _str]] call CBA_fnc_globalEvent;
	
	_str = format ["bodies: %1", count _deadOnes]; ///////
	["gnrf_clientExecute", ["player", "sideChat", _str]] call CBA_fnc_globalEvent; //////////
	
	if (count _deadOnes >= 150) then 
	{
		_del = [];
		for "_i" from 0 to round(count _deadOnes / 2) do 
		{
			_e = _deadOnes select _i;
			_del set [count _del, _e];
		};
	
		_str = format ["to be deleted: %1", count _del]; ///////
		["gnrf_clientExecute", ["player", "sideChat", _str]] call CBA_fnc_globalEvent; //////////
		
		_deadOnes = _deadOnes - _del;
		[_del] call CBA_fnc_deleteEntity;
		
		_delCnt = _delCnt + (count _del);
		
		_str = format ["bodies new: %1", count _deadOnes]; ///////
		["gnrf_clientExecute", ["player", "sideChat", _str]] call CBA_fnc_globalEvent; //////////
	};
};