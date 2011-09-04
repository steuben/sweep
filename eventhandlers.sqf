

//player killed

if ( isNil{player getVariable "done"} ) then 
{
	player addEventHandler ["killed", 
	{ 
		[] spawn {
			
			player setVariable ["deathPos", getPos player];
			waitUntil {alive player}; 
			execVM "loadout\respawn.sqf";					
		};	
	}];
	player setVariable ["done", true];
};


