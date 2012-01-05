
if (!isNil "gnrf_scaringCivs") exitWith {}; 
private ["_roles", "_nearCivs"];
sleep 0.5;
gnrf_scaringCivs = true;

waitUntil {!isNil "gnrf_nearCivs"};
_nearCivs = [];

for "_i" from 0 to (count gnrf_nearCivs)-1 do 
{
	_unit = gnrf_nearCivs select _i;
	_roles = _unit getVariable "roles";
	if ((_unit in gnrf_movingCivs) AND ("onFoot" in _roles) AND !("zpd" in _roles) AND !("housed" in _roles)) then {_nearCivs set [count _nearCivs, _unit]};
};

["gnrf_serverExecute", [{[_x] spawn gnrf_fleeIntoBuilding_fnc}, "forEach", _nearCivs]] call CBA_fnc_localEvent; //change local to global!!!


sleep 5;
gnrf_nearCivs = nil;
gnrf_scaringCivs = nil;
