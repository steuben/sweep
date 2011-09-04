

_noGoZoneMrk = createMarker ["gnrf__noGoZoneMrkName",[4200,5000,0]];
_noGoZoneMrk setMarkerColor "ColorBlack";
_noGoZoneMrk setMarkerShape "ELLIPSE";
_noGoZoneMrk setMarkerSize [750, 375];
_noGoZoneMrk setMarkerBrush "FDIAGONAL";

gnrf_opforAA_H1 = "heliHempty" createVehicle [4200,5000,50];

gnrf_noGoShilkaGrp = Creategroup EAST;

gnrf_noGoZone_fnc = {

	_pos = [[4200,5250,0], 200] call CBA_fnc_randPos;
	_pos set [2,0];
	gnrf_noGoShilka1 = "ACE_ZSU_RU" createVehicle _pos;
	gnrf_noGoShilka1 setDir round(random 360);
	gnrf_noGoShlkCrew1 = "RU_Soldier_Crew" createUnit [_pos, gnrf_noGoShilkaGrp, "gnrf_noGoShlkGunner1 = this", 0.7, "Sergeant"];		
	gnrf_noGoShlkGunner1 moveInGunner gnrf_noGoShilka1;
	
	_pos = [[4200,5250,0], 200] call CBA_fnc_randPos;
	_pos set [2,0];
	gnrf_noGoShilka2 = "ACE_ZSU_RU" createVehicle _pos;
	gnrf_noGoShilka2 setDir round(random 360);
	gnrf_noGoShlkCrew2 = "RU_Soldier_Crew" createUnit [_pos, gnrf_noGoShilkaGrp, "gnrf_noGoShlkGunner2 = this", 0.7, "Sergeant"];		
	gnrf_noGoShlkGunner2 moveInGunner gnrf_noGoShilka2;
	
	_pos = [[4200,5250,0], 200] call CBA_fnc_randPos;
	_pos set [2,0];
	gnrf_noGoShilka3 = "ACE_ZSU_RU" createVehicle _pos;
	gnrf_noGoShilka3 setDir round(random 360);
	gnrf_noGoShlkCrew3 = "RU_Soldier_Crew" createUnit [_pos, gnrf_noGoShilkaGrp, "gnrf_noGoShlkGunner3 = this", 0.7, "Sergeant"];		
	gnrf_noGoShlkGunner3 moveInGunner gnrf_noGoShilka3;
	
	sleep 5;
	
	_array = _this select 0;
	_targetArrayAir = [];
	_targetArrayGround = [];
	
	while {gnrf_noGoZoneHot} do {

		{if ((side _x == WEST) AND ((getPos _x select 2)>20)) then {_targetArrayAir set [count _targetArrayAir, _x];};} forEach _array; 
		{if ((side _x == WEST) AND ((getPos _x select 2)<=20)) then {_targetArrayGround set [count _targetArrayGround, _x];};} forEach _array; 
		
		if ((count _targetArrayAir) > 0) then {
		
			_cnt = (random round(count _targetArrayAir) -1) max 0;
			_target = _targetArrayAir select _cnt;
						
			for "_x" from 0 to (round(random 1)+1) do { 
			
				_pos = [[4200,5000,50], 300] call CBA_fnc_randPos;
				_pos set [2, 50];
				gnrf_opforAA_H1 setPos _pos;
				[gnrf_opforAA_H1, _target, "M_Stinger_AA"] spawn gnrf_opforAA_compiled;
				sleep 0.5;
			};
				
		};

		
		if ((count _targetArrayGround) > 0) then {
		
			_cnt = (random round(count _targetArrayGround) -1) max 0;
			_target = _targetArrayGround select _cnt;
				
			for "_x" from 0 to (round(random 4)+1) do { 
			
				_pos = [getPos _target, 40] call CBA_fnc_randPos;
				_pos set [2, 1000];
				_boom = "ACE_ARTY_Sh_60_HE" createVehicle _pos;
				_vel = [[0,0,0], 2] call CBA_fnc_randPos; 
				_vel set [2, -100];
				_boom setVelocity _vel;
				sleep (random 2);
			};
		};
		
		sleep (random 4)+6;
	};
	
	deleteVehicle gnrf_noGoShlkGunner1;
	deleteVehicle gnrf_noGoShlkGunner2;
	deleteVehicle gnrf_noGoShlkGunner3;
	deleteVehicle gnrf_noGoShilka1;
	deleteVehicle gnrf_noGoShilka2;
	deleteVehicle gnrf_noGoShilka3;
	
	gnrf_noGoZoneHot = false;
	publicVariable "gnrf_noGoZoneHot";
};




