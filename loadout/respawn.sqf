
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
if (!isNil "gnrf_helperArrow") then 
{
	gnrf_helperArrow attachTo [player, [0,0,4]];
};

//re-add debug actions 
if (!isnil "debugModeOn") then {[] spawn gnrf_addDebugOptions_fnc};

// call counter attack action
if (!isNil "gnrf_drebinEst") then 
{
	gnrf_counterAttack_Act = player addAction [("<t color=""#1F67CC"">" + ("Get new orders") + "</t>"),"gen_action.sqf",[{

		if (!isNil "gnrf_CAcalled") exitWith {};
		gnrf_CAcalled = true;
		publicVariable "gnrf_CAcalled";
		[0, {[] execVM "extras\opforAssault\assaultInit.sqf";}] call CBA_fnc_globalExecute;

		broadcast = "counterAttack";
		publicVariable "broadcast";
		broadcast = nil;

		titleText ["Enemy Forces Advancing On Zargabad From The North.", "PLAIN"];
		sleep 2;
		major sideChat "All GHOSTRIDER units, be advised.";
		major sideChat "Russian Forces have massed up on the northern flank.";
		sleep 4;
		major sideChat "Expect a fierce combined arms assault, there are multiple armor units in support of a company sized Mech.Inf. Element approaching Hazar Bagh.";
		sleep 4;
		major sideChat "Hold the line! The City you just fucked up is counting on you now. Hammer out.";

	}],0,true,true,"","isNil 'gnrf_CAcalled'"];
};

