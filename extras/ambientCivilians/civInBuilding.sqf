
private ["_unit", "_targetPos", "_building", "_rnd", "_dis", "_cnt"]; 

_civSet = createGroup civilian;
_building = gnrf_allBuildings call BIS_fnc_selectRandom;
_targetPos = _building call BIS_fnc_selectRandom;
_unitClass = ["TK_CIV_Takistani01_EP1", "TK_CIV_Takistani02_EP1", "TK_CIV_Takistani03_EP1", "TK_CIV_Takistani04_EP1", "TK_CIV_Takistani05_EP1", "TK_CIV_Takistani06_EP1", "ACE_TK_CIV_Takistani_Doctor_EP1", "Doctor", "SchoolTeacher", "RU_Rocker1", "TK_CIV_Woman01_EP1", "TK_CIV_Woman02_EP1", "TK_CIV_Woman03_EP1", "Farmwife4", "Madam3"] call BIS_fnc_selectRandom;
_civUnit = _unitClass createUnit [_targetPos, _civSet, "_unit = this;", 1, ""];	
_unit setPos _targetPos; 

_targetPos = _building call BIS_fnc_selectRandom;
doStop _unit;
_unit doMove (_targetPos); 
_unit forceSpeed 1;
_cnt = 0;	
while {(alive _unit) AND (_unit getVariable ["active", true])} do {
	
	_dis = (getPos _unit) distance _targetPos;
	
	if (_dis < 2) then {
		
		waitUntil {unitReady _unit};
		_unit disableAI "MOVE";
		_rnd = 5 + (random 2);
		sleep _rnd;
		_unit enableAI "MOVE"; 
		_targetPos = _building call BIS_fnc_selectRandom;
		doStop _unit;
		_unit doMove (_targetPos); 
		_unit forceSpeed 1;
		_cnt = 0;

	} else {
			
		if (_cnt > 19) then {_unit domove (_targetPos); _unit setPosASL getPosASL _unit; _cnt = 0};
	};
	
	_cnt = _cnt + 1;
	
	sleep 1;	
};