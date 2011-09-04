nook1 setVariable ["empty", false, true];
nook1 addAction ["Unload ATV","extras\atv\unloadATV.sqf", [], 300, false, true, "", "alive _target && speed _target < 30 && !(nook1 getVariable 'empty')"];

nook2 setVariable ["empty", false, true];
nook2 addAction ["Unload ATV","extras\atv\unloadATV.sqf", [], 300, false, true, "", "alive _target && speed _target < 30 && !(nook2 getVariable 'empty')"];

//turboATV actionKey

turboAtv_keyDown = {
	
	private["_handled", "_ctrl", "_dikCode", "_shift", "_ctrlKey", "_alt"];
	_ctrl = _this select 0;
	_dikCode = _this select 1;
	_shift = _this select 2;
	_ctrlKey = _this select 3;
	_alt = _this select 4;  
	_handled = false;
	_atv = ["ATV_US_EP1"];

	if (!_shift && !_ctrlKey && !_alt) then  {
	
	_veh = vehicle player;
		  
		if ((_dikCode == 79) AND (typeOf _veh in _atv)) then {
			
			_vel = velocity _veh;
			_dir = direction _veh;
			_speed = 15;
			_veh setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2)];
	    		_handled = true;
		};
	};

	_handled;  
};

waitUntil { !(isNull (findDisplay 46)) };
(findDisplay 46) displayAddEventHandler ["keyDown", "_this call turboAtv_keyDown"];
