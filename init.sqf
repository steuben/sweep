// Init
[] execVM "loadout\playersinit.sqf";

[] execVM "loadout\victors\setupVictors.sqf";

[] execVM "eventhandlers.sqf";
[] execVM "extras\extrasInit.sqf";
[] execVM "extras\commMenu\customComms.sqf";
major setGroupID ["HAMMER","GroupColor4"];
Hammer = group major;

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
