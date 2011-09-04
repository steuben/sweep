
private ["_unit", "_posArray", "_prevTargetPos", "_done", "_targetPos", "_samePos"];
_unit = _this select 0;
waitUntil {unitReady _unit};
_unit disableAI "MOVE";
sleep random 60;
_building = _unit getVariable "building";
_prevTargetPos = _unit getVariable "targetPos";

/*
_done = false;
while {!_done} do {

	_targetPos = _building call BIS_fnc_selectRandom;
	_samePos = [_targetPos, _prevTargetPos] call BIS_fnc_areEqual;
	if (!_samePos) then {_done = true};
};
*/
_unit setVariable ["targetPos", _targetPos];
_unit enableAI "MOVE"; 
doStop _unit;
_unit doMove (_targetPos); 
_unit forceSpeed 1;

gnrf_housedCivs = gnrf_housedCivs + [_unit];


