
gnrf_noGoZoneHot = false;

_noGoWarningTrg = createTrigger["EmptyDetector", [4200,5000,0]]; 
_noGoWarningTrg setTriggerArea[800,400,0,false]; 
_noGoWarningTrg setTriggerActivation["WEST","PRESENT",true]; 
_noGoWarningTrg setTriggerStatements["this", "
	
	_array = [];
	{_array set [count _array, crew _x]} forEach thisList;
	_units = [];
	_max = 1;
	{if (count _x > _max) then {_max = count _x}} forEach _array;
	
	_i = 0;
	for '_i' from 0 to (_max - 1) do {
		
		{_units set [count _units, _x select _i]} forEach _array;
	};
	if (({_x in units group player} count _units) > 0) then {titleText ['You are about to enter OPFOR controlled territory. Do not proceed any further or enemy scouts may detect you.', 'PLAIN']}
	
", ""]; 


_noGoZoneTrg = createTrigger["EmptyDetector", [4200,5000,0]]; 
_noGoZoneTrg setTriggerArea[750,375,0,false]; 
_noGoZoneTrg setTriggerActivation["WEST","PRESENT",true]; 
_noGoZoneTrg setTriggerStatements["this", "	
	
	_array = [];
	{_array set [count _array, crew _x]} forEach thisList;
	_units = [];
	_max = 1;
	{if (count _x > _max) then {_max = count _x}} forEach _array;
	
	_i = 0;
	for '_i' from 0 to (_max - 1) do {
		
		{_units set [count _units, _x select _i]} forEach _array;
	};
	
	if (({_x in units group player} count _units) > 0) then {titleText ['You have been spotted. Prepare for enemy fire', 'PLAIN']};
	if (!gnrf_noGoZoneHot) then {[0, {[_this] spawn gnrf_noGoZone_fnc}, thisList] call CBA_fnc_globalExecute;};
	gnrf_noGoZoneHot = true; 
	publicVariable 'gnrf_noGoZoneHot'
", "

	gnrf_noGoZoneHot = false; 
	publicVariable 'gnrf_noGoZoneHot'
	
"]; 


	
	
	
	
	
	
	
	
	