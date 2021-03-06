// Init
sleep 0.1;
startLoadingScreen ["Loading mission, please wait..."];
debugModeOn = false;
[] execVM "loadout\playersinit.sqf";
[] execVM "loadout\victors\setupVictors.sqf";
[] execVM "aceWounds.sqf";
[] execVM "extras\extrasInit.sqf";
[] execVM "extras\commMenu\customComms.sqf";
major setGroupID ["HAMMER","GroupColor4"];
Hammer = group major;

opforCenter = createCenter EAST;
setViewDistance 2500;

// setup multiplayer broadcast system
"broadcast" addPublicVariableEventHandler {[_this select 1] execVM "broadcast.sqf"};

//civ de-pussyfication
civilian setFriend [east,1];
civilian setFriend [west,1];

//player names are stored to array
if (!isDedicated) then {
	gnrf_players = call CBA_fnc_players;
	publicVariable "gnrf_players";
};


