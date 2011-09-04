
[-1, {major globalChat "Initializing AmbientCivs"}] call CBA_fnc_globalExecute;

gnrf_civSetRdy = true;
gnrf_civUnits = [];
gnrf_movingCivs = [];
gnrf_housedCivs = [];
gnrf_scaredCivs = [];

civCenter = createCenter civilian;
gnrf_civSet = createGroup civilian;
_unit = "TK_CIV_Takistani01_EP1" createUnit [[10000,10000,0], gnrf_civSet, "_civLeader = this;", 1, ""];
doStop _civLeader;
_civLeader disableAI "MOVE";
_nic = [nil, leader gnrf_civSet, "per", rHideObject, true] call RE;
waitUntil {!isNil "gnrf_players"};
waitUntil {(!isNil "gnrf_createCivSet_fnc") AND (gnrf_initCounter == count gnrf_players)};

for "_i" from 1 to 70 do {
		
		waitUntil {gnrf_civSetRdy};
		[] spawn gnrf_createCivSet_fnc;
		sleep 0.01;
};

//////add EH´s
{_x addMPEventhandler ["MPKilled", "if (isServer) then {_this select 0 removeAllEventHandlers 'MPkilled'; [_this select 0, _this select 1] spawn killDetector_compiled}"];} forEach gnrf_civUnits;

//////civ movement scripts
for "_i" from 0 to 60 do {	

	[] spawn gnrf_civInBuilding_fnc;
	sleep 0.03;
};

[] spawn compile preprocessFile "extras\ambientCivilians\civMovement.sqf";

[-1, {major globalChat "AmbientCivs initialized"}] call CBA_fnc_globalExecute;