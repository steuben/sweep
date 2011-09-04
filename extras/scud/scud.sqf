
if (!isServer) exitWith {};

waituntil {(!isnil "bis_fnc_init") AND (!isNil "gnrf_players")};

_pos = _this select 0;

 
//////functions

// 
	gnrf_scudCheckDammage_fnc = {
		
		private ["_dam", "_newDam", "_chance", "_r"];
				
		while {((isNil "gnrf_scudDefused") AND (alive gnrf_scudLauncher) AND (isNil "gnrf_scudLaunched"))} do {
			
			_dam = getDammage gnrf_scudLauncher;
			sleep 1;
			_newDam = getDammage gnrf_scudLauncher;
			
			if (_newDam > _dam) then {
				
				_chance = (_newDam - _dam) * 100;
				_r = floor(random 100);
				if (_r < _chance) exitWith {[] spawn gnrf_scudMisfire_fnc};
			};
		};
	};
				
				

//
	gnrf_scudMisfire_fnc = {
		
		private ["_pos", "_bomb", "_bomb2"];		
		
		if (scudState gnrf_scudLauncher < 2) then {

			for "_i" from 1 to 4 do {
				_pos = [getPos gnrf_scudTank, 2] call CBA_fnc_randPos;
				_bomb = "ace_fuelexpbig" createVehicle _pos; 
				sleep 0.15;
			};
			
			sleep 0.8;
			_bomb = createVehicle ["Bo_Mk82", [0,0,1000], [], 0, "CAN_COLLIDE"];
			_bomb2 = createVehicle ["Bo_Mk82", [0,5,1000], [], 0, "CAN_COLLIDE"];
			_bomb setPos (getPos gnrf_scudWarhead);
			_bomb2 setPos (getPos gnrf_scudWarhead);
		
		} else {		
			
			for "_i" from 1 to 4 do {
				
				_pos = [getPos gnrf_scudTank2, 2] call CBA_fnc_randPos;
				_bomb = "ace_fuelexpbig" createVehicle _pos; 
				sleep 0.15;			
			}; 
			
			sleep 0.8;
			_bomb = createVehicle ["Bo_Mk82", [0,0,1000], [], 0, "CAN_COLLIDE"];
			_bomb2 = createVehicle ["Bo_Mk82", [0,5,1000], [], 0, "CAN_COLLIDE"];
			_bomb setPos (getPos gnrf_scudWarhead2);
			_bomb2 setPos (getPos gnrf_scudWarhead2);
					
		};
		gnrf_scudLauncher setDamage 1;
	};	

//	
	gnrf_scudLaunch_fnc = {
		
		private "_cnt";
		
		[] spawn gnrf_scudCheckDammage_fnc;
		grnrf_scudLogic action ["scudLaunch",gnrf_scudLauncher];		
		[-1, {[_this] spawn gnrf_scudTimer_fnc}, 90 + round(random 90)] call CBA_fnc_globalExecute;		
		_cnt = 0;		
		waitUntil {{_cnt = _cnt + (_x getVariable ["gnrf_ScudTimerDone", 0])} forEach gnrf_players; _cnt == count gnrf_players};

		if ((isNil "gnrf_scudDefused") AND (alive gnrf_scudLauncher)) then {

			gnrf_scudLaunched = true; 
			publicVariable "gnrf_scudLaunched";
			grnrf_scudLogic action ["scudStart",gnrf_scudLauncher];		
			
			[-1, {
				
				private ["_pow", "_nearUnits"];
				_pow = 10 - round(0.2 * (player distance gnrf_scudLauncher));
				if (_pow < 0) then {_pow = 0};
				addCamShake [_pow, 5, 25];				
				_nearUnits = (getPos gnrf_scudLauncher) nearObjects ["Man",8];
				{_x setDamage ((getDammage _x) + 2 / ceil(_x distance gnrf_scudLauncher))} forEach _nearUnits;
				
			}] call CBA_fnc_globalExecute;
		};
	};	

publicVariable "gnrf_scudLaunch_fnc";

//////create Launcher
gnrf_scudLauncher = "MAZ_543_SCUD_TK_EP1" createVehicle _pos;
gnrf_scudLauncher setFuel 0;
gnrf_scudLauncher setDir 270;

createCenter sideLogic;
_scudGrp = createGroup sideLogic;
grnrf_scudLogic = _scudGrp createUnit ["Logic", [1, 1, 1], [], 0, "NONE"];
grnrf_scudLogic moveInDriver gnrf_scudLauncher;

//	weaponHolders mark the relevant positions on the launcher
gnrf_scudWarhead = createVehicle ["weaponHolder", [0,0,5000], [], 0, "CAN_COLLIDE"];
gnrf_scudWarhead attachTo [gnrf_scudLauncher,[0,3.5,1]];
gnrf_scudWarhead2 = createVehicle ["weaponHolder", [0,0,5000], [], 0, "CAN_COLLIDE"];
gnrf_scudWarhead2 attachTo [gnrf_scudLauncher,[0,-5.5,6.5]];
gnrf_scudTank = createVehicle ["weaponHolder", [0,0,5000], [], 0, "CAN_COLLIDE"];
gnrf_scudTank attachTo [gnrf_scudLauncher,[0,1,1]];
gnrf_scudTank2 = createVehicle ["weaponHolder", [0,0,5000], [], 0, "CAN_COLLIDE"];
gnrf_scudTank2 attachTo [gnrf_scudLauncher,[0,-5,4]];

publicVariable "gnrf_scudLauncher";
	
[-1, {[_this] execVM "extras\scud\scudClientSide.sqf"}, 50 + round(random 50)] call cba_fnc_globalexecute;

