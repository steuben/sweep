setCreating = true;
publicVariable "setCreating";

_getSector = _this select 0;
_getCallsign = _this select 1;
_getSet = _this select 2;
_victorsEnabled = _this select 3;


createOpforSet = 
{
	_sector = _this select 0;
	_groupCallsign = _this select 1;
	_waypointSet = _this select 2;
	
	[_sector, _groupCallsign, _waypointSet] execVM "sectors\createOpforInfSet.sqf";
	
};

createOpforVictorSet = 
{
		_sector = _this select 0;
		_groupCallsign = _this select 1;
		_waypointSet = _this select 2;
		
		_victorChance = round(random 9);
		_canHazVictor = 0;
		if(_victorChance < 7) then
		{
			_canHazVictor = 1;
		};
		
		switch (_canHazVictor) do 
			{
				case 0 : 
				{
					[_sector, _groupCallsign, _waypointSet] execVM "sectors\createOpforInfSet.sqf";
				};
							
				case 1 : 
				{
					[_sector, _groupCallsign, "Vehicle"] execVM "sectors\createOpforVictorSet.sqf";
				};
			};
};



switch (_victorsEnabled) do 
			{
				case 0 : 
				{
					[_getSector, _getCallsign, _getSet] call  createOpforSet;
				};
				
				case 1 : 
				{
					[_getSector, _getCallsign, _getSet] call  createOpforVictorSet;
				};
			};
			