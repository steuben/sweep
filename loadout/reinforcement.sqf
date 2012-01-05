
private ["_minDis", "_nearestPos", "_spawnPos"];

//determine spawnPos closest to the player
waitUntil {alive player};
_minDis = 10000;
_nearestPos = [];

{
	_pos = _x select 0;
	
	if (typeName _pos == "OBJECT") then 
	{
		_pos = getPos _pos;
	};
		
	_dis = (getPos player) distance _pos;
	if (_dis < _minDis) then {_nearestPos = _pos; _minDis = _dis};	

} forEach gnrf_respawnInfo;

_spawnPos = [_nearestPos select 0, _nearestPos select 1, 0];


//CREATE TEAM STEUBEN (alpha)
if (player == steuben) then 
{

if (!alive steuben2) then {
	"ACE_USMC_SoldierM_Marksman_D" createUnit [_spawnPos, alpha, "steuben2=this; this setVariable ['ace_w_eh',0];", 1, ""];
};

if (!alive steuben3) then {
	"ACE_USMC_Soldier_TAR_D" createUnit [_spawnPos, alpha, "steuben3=this; this setVariable ['ace_w_eh',0];", 1, ""];
};

if (!alive steuben4) then {
	"ACE_USMC_Soldier_AT_D" createUnit [_spawnPos, alpha, "steuben4=this; this setVariable ['ace_w_eh',0];", 0.8, ""];
};

if (!alive steuben5) then {
	"ACE_USMC_Soldier_GL_D" createUnit [_spawnPos, alpha, "steuben5=this; this setVariable ['ace_w_eh',0];", 0.8, ""];
};

if (!alive steuben6) then {
	"ACE_USMC_Soldier_Medic_D" createUnit [_spawnPos, alpha, "steuben6=this; this setVariable ['ace_w_eh',0];", 0.6, ""];
};

if (!alive steuben7) then {
	"ACE_USMC_Soldier_Medic_D" createUnit [_spawnPos, alpha, "steuben7=this; this setVariable ['ace_w_eh',0];", 0.6, ""];
};

if (!alive steuben8) then {
	"ACE_USMC_SoldierS_Engineer_D" createUnit [_spawnPos, alpha, "steuben8=this; this setVariable ['ace_w_eh',0];", 0.6, ""];
};

if (!alive steuben9) then {
	"ACE_USMC_SoldierS_Engineer_D" createUnit [_spawnPos, alpha, "steuben9=this; this setVariable ['ace_w_eh',0];", 0.6, ""];
};

{_x assignTeam "RED"} foreach [steuben2,steuben3,steuben4,steuben5];
{_x assignTeam "GREEN"} foreach [steuben6,steuben7];
{_x assignTeam "BLUE"} foreach [steuben8,steuben9];

};

////////////////////////////////////////////////////////////////////////

//CREATE TEAM BBQ (bravo)

if (player == bbq) then {

if (!alive bbq2) then {
	"ACE_USMC_SoldierM_Marksman_D" createUnit [_spawnPos, bravo, "bbq2=this; this setVariable ['ace_w_eh',0];", 1, ""];
};

if (!alive bbq3) then {
	"ACE_USMC_Soldier_TAR_D" createUnit [_spawnPos, bravo, "bbq3=this; this setVariable ['ace_w_eh',0];", 1, ""];
};

if (!alive bbq4) then {
	"ACE_USMC_Soldier_D" createUnit [_spawnPos, bravo, "bbq4=this; this setVariable ['ace_w_eh',0];", 0.8, ""];
};

if (!alive bbq5) then {
	"ACE_USMC_Soldier_GL_D" createUnit [_spawnPos, bravo, "bbq5=this; this setVariable ['ace_w_eh',0];", 0.8, ""];
};

if ((!alive bbq6) AND (getdammage hummvee1 < 0.9)) then {
	"ACE_USMC_Soldier_D" createUnit [_spawnPos, bravo, "bbq6=this; this setVariable ['ace_w_eh',0];", 0.6, ""];
};

if ((!alive bbq7) AND (getdammage hummvee1 < 0.9)) then {
	"ACE_USMC_Soldier_D" createUnit [_spawnPos, bravo, "bbq7=this; this setVariable ['ace_w_eh',0];", 0.6, ""];
};

if ((!alive bbq8) AND (getdammage hummvee2 < 0.9)) then {
	"ACE_USMC_Soldier_D" createUnit [_spawnPos, bravo, "bbq8=this; this setVariable ['ace_w_eh',0];", 0.6, ""];
};

if ((!alive bbq9) AND (getdammage hummvee2 < 0.9)) then {
	"ACE_USMC_Soldier_D" createUnit [_spawnPos, bravo, "bbq9=this; this setVariable ['ace_w_eh',0];", 0.6, ""];
};

{_x assignTeam "BLUE"} foreach [bbq2,bbq3,bbq4,bbq5];
{_x assignTeam "RED"} foreach [bbq6,bbq7];
{_x assignTeam "YELLOW"} foreach [bbq8,bbq9];

};

// FAHRZEUGE AUFLADEN

leadVictor setFuel 1;
leadVictor setVehicleAmmo 1;

utilityVictor setFuel 1;

hummvee1 setFuel 1;
hummvee1 setVehicleAmmo 1;

hummvee2 setFuel 1;
hummvee2 setVehicleAmmo 1;

medevacVictor setFuel 1;


if ( canMove hummvee1) then {
bbq6 moveInDriver hummvee1;
bbq7 moveInGunner hummvee1;
};

if ( canMove hummvee2) then {
bbq8 moveInDriver hummvee2;
bbq9 moveInGunner hummvee2;
};

// rearm team
for "_i" from 2 to 9 do {

	_unit = str(player) + str(_i);
	
	call compile format ["
		_unit = %1;
		waitUntil {alive _unit};
		removeAllWeapons _unit;
		{_unit addMagazine _x;} forEach %1%2Magazines;
		{_unit addWeapon _x;} forEach %1%2Weapons;
		reload _unit;
		_unit setDamage 0;
	
	", _unit]
};

// rearm player
removeAllWeapons player;
_magazines = player getVariable "magazines";
_weapons = player getVariable "weapons";
{player addMagazine _x} forEach _magazines;
{player addWeapon _x} forEach _weapons;
reload player;
player setDamage 0;

//remove all KilledEH´s
{_x removeAllEventHandlers "MPkilled"} forEach units group player;

//add KilledEH
{_x addMPEventhandler ["MPKilled", "if (isServer) then {[_this select 0, _this select 1] spawn killDetector_compiled}"]} forEach units group player;

// RESUPPLY MEDICS
/*
	[steuben6, "BTH"] call ACE_fnc_RemoveGear;
	_success = [steuben6, "ACE_Bandage", 10] call ACE_fnc_PackMagazine;
	_success = [steuben6, "ACE_Epinephrine", 10] call ACE_fnc_PackMagazine;
	_success = [steuben6, "ACE_Morphine", 10] call ACE_fnc_PackMagazine;
	_success = [steuben6, "ACE_LargeBandage", 10] call ACE_fnc_PackMagazine;
	_success = [steuben6, "ACE_Medkit", 5] call ACE_fnc_PackMagazine;
	
	
	[steuben7, "BTH"] call ACE_fnc_RemoveGear;
	_success = [steuben7, "ACE_Bandage", 10] call ACE_fnc_PackMagazine;
	_success = [steuben7, "ACE_Epinephrine", 10] call ACE_fnc_PackMagazine;
	_success = [steuben7, "ACE_Morphine", 10] call ACE_fnc_PackMagazine;
	_success = [steuben7, "ACE_LargeBandage", 10] call ACE_fnc_PackMagazine;
	_success = [steuben7, "ACE_Medkit", 5] call ACE_fnc_PackMagazine;
*/