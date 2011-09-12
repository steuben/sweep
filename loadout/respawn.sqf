
private ["_minDis", "_nearestPos", "_offSet", "_playerPos", "_x", "_y", "_z", "_spawnPos", "_magazines", "_weapons"];
waitUntil {alive player};

_minDis = 10000;
_nearestPos = [];
_offSet = 0;
_playerPos = player getVariable "deathPos";

{
	_pos = _x select 0;
	
	if (typeName _pos == "OBJECT") then 
	{
		_pos = getPos _pos;
	};
		
	_dis = _playerPos distance _pos;
	if (_dis < _minDis) then {_nearestPos = _pos; _offSet = _x select 1; _minDis = _dis};	

} forEach gnrf_respawnInfo;

//set player to respawn position
_x = (_nearestPos select 0) + (_offSet - random(_offSet*2)); 
_y = (_nearestPos select 1) + (_offSet - random(_offSet*2)); 
_z = 0;
_spawnPos = [_x, _y, _z];
if (_offSet != 0) then {_spawnPos = _spawnPos findEmptyPosition [1,20, "Man"]};
player setpos _spawnPos;

//Add custom loadout
removeAllWeapons player;
_magazines = player getVariable "magazines";
_weapons = player getVariable "weapons";
{player addMagazine _x} forEach _magazines;
{player addWeapon _x} forEach _weapons;
reload player;

//re-attach helper arrow
gnrf_helperArrow attachTo [player, [0,0,4]];

//re-add debug actions 
if (!isnil "debugModeOn") then {[] spawn gnrf_addDebugOptions_fnc};

