
private ["_target", "_inVehicle"];

_array = gnrf_players - [player];
if ((count _array) < 1) exitWith {hintSilent "Helper Arrow: No second player found"};
_target = _array select 0;

gnrf_helperArrow = 	"Sign_arrow_down_EP1" createVehicleLocal [0,0,0];
gnrf_helperArrow attachTo [_target, [0,0,4]];
_inVehicle = false;

while {true} do 
{
	if ((vehicle _target != _target) AND (!_inVehicle)) then 
	{
		gnrf_helperArrow attachTo [vehicle _target];
		_inVehicle = true;
	};

	if ((vehicle _target == _target) AND (_inVehicle)) then 
	{
		gnrf_helperArrow attachTo [_target, [0,0,4]];
		_inVehicle = false;
	};
	
	sleep 0.873;
};