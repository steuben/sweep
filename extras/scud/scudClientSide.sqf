
////// inform players about new orders
gnrf_scudBriefing = [] spawn {
	
	major sideChat "Ghostrider this is Hammer Actual. You have been assigned a high priority target.";
	sleep 2;
	player sideChat "Hammer, this is Ghostrider. Bring it on.";
	sleep 2;
	major sideChat "The enemy has decloaked a SCUD-B tactical ballistic missile sytem near your position.";
	sleep 1;
	major sideChat "You are ordered to prevent the enemy from launching it at all cost. Too bad, a direct attack on the target is not an option...";
	sleep 1;
	major sideChat "at least as long as you dont want to find out first hand what kind of warhead that missile carries.";
	sleep 1;
	major sideChat "You will have to seize the launch vehicle and disable the remote launch controlls as quickly as possible.";
	sleep 2;
	player sideChat "Solid copy, Hammer. Ghostrider is on the move.";
	sleep 2;
	major sideChat "Godspeed, Ghostrider. Hammer out.";
};


//////initiate Launch if Blufor gets near scud
_area = _this select 0;
gnrf_scudTrg = createTrigger["EmptyDetector", getPos gnrf_scudLauncher]; 
gnrf_scudTrg setTriggerArea[_area,_area,0,false]; 
gnrf_scudTrg setTriggerActivation["WEST","PRESENT",false]; 
gnrf_scudTrg setTriggerStatements["this", "[-1, {deleteVehicle gnrf_scudTrg}] call CBA_fnc_globalExecute; [0, {[] spawn gnrf_scudLaunch_fnc}] call CBA_fnc_globalExecute;", ""]; 


////// launch countdown, with feedback to server when finished (for sync´s sake)
gnrf_scudTimer_fnc = {
	private ["_zero", "_s", "_ms"];
	waitUntil {scriptDone gnrf_scudBriefing};
	sleep 1;
	major sideChat "Hurry up, Ghostrider! The launch preperations should be finished any minute now."; //doppelt, bei zwei spielern
	_zero = "";
	_s = _this select 0;
	_ms = 0;
	scopeName "main";
	while {((isNil "gnrf_scudDefused") AND (alive gnrf_scudLauncher) AND (alive player))} do {
			
		_ms = _ms - 1;
		_s = _s - 0.1;
		if (_ms < 0) then {_ms = 9};

		if (_s < 59) then {
		
			if (_s <= 9) then {_zero = "0"};
			hintSilent parseText format ["<t size='1.15' color='#98ACB9'>Scud Launcher Countdown<br/><br/><t color='#E00000' size='3'>%1 <t size='2'>:</t> <t valign='top' size='2'>%2</t></t></t>", _zero + str(abs(ceil _s)), str(_ms)+"0"]; 
			
			if ((_s <= 0) AND (_ms <= 0)) exitWith {
		
				hintSilent parseText format ["<t size='1.15' color='#98ACB9' align='center'>Scud Launcher Countdown<br/><br/><t color='#E00000' size='2.5'>%1 <t size='2'>:</t> <t valign='top' size='1.8'>%2</t></t></t><br/><t size='1.15' color='#E00000' align='center'>Scud Missile Launched</t>", _zero + str(abs(ceil _s)), str(_ms)+"0"]; 	
				breakTo "main";
			};			
		};
		sleep 0.1;
	};
		
	player setVariable ["gnrf_ScudTimerDone", 1, true];
				
	if (!isNil "gnrf_scudDefused") then {
		hintSilent parseText format ["<t size='1.15' color='#98ACB9' align='center'>Scud Launcher Countdown<br/><br/><t color='#E00000' size='2.5'>%1 <t size='2'>:</t> <t valign='top' size='1.8'>%2</t></t></t><br/><t size='1.15' color='#FFF346' align='center'>Scud Missile Defused</t>", _zero + str(abs(ceil _s)), str(_ms)+"0"]; 
		sleep 5;
		major sideChat "Good work, Ghostrider! The enemy has lost controll over the launch mechanism. We will salvage the weapon after the area has been cleared. You can proceed with your primary mission objectives now. Hammer out.";
	};
		
	if (!alive gnrf_scudLauncher) then {
		hintSilent parseText format ["<t size='1.15' color='#98ACB9' align='center'>Scud Launcher Countdown<br/><br/><t color='#E00000' size='2.5'>%1 <t size='2'>:</t> <t valign='top' size='1.8'>%2</t></t></t><br/><t size='1.15' color='#FFF346' align='center'>Scud Missile Destroyed</t>", _zero + str(abs(ceil _s)), str(_ms)+"0"];
		sleep 5;
		major sideChat "That was risky, Ghostrider. But it did the job. You can proceed with your primary mission objectives now. Hammer out.";
	};
	
	if ((alive gnrf_scudLauncher) AND (isNil "gnrf_scudDefused")) then {		
		major sideChat "Ghostrider, this is Hammer. We have detected a ballistic missile launch from within the city. You have failed your assignment. Please revert to your primary mission objectives. Hammer out.";
		sleep 10;
	};
};

//////add action to defuse Scud (cancel launch)
gnrf_defuseScud = gnrf_scudLauncher addAction [("<t color=""#FFC21C"">" + ("Defuse Scud") + "</t>"),"gen_action.sqf","	
	gnrf_scudLauncher removeAction gnrf_defuseScud;		
	[0, {
		gnrf_scudLogic action ['scudCancel',gnrf_scudLauncher];
		gnrf_scudDefused = true;
		publicVariable 'gnrf_scudDefused';
	}] call CBA_fnc_globalExecute;	
",0,false,true,"","(alive gnrf_scudLauncher) AND (isNil 'gnrf_scudLaunched') AND (isNil 'gnrf_scudDefused') AND ({(_x distance gnrf_scudLauncher) <= 3} count gnrf_players > 0)"];