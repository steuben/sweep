

//player killed

if ( isNil{player getVariable "done"} ) then 
{
	player addEventHandler ["killed", 
	{ 
		[] spawn {
			
			player setVariable ["deathPos", getPos player];
			waitUntil {alive player}; 
			[] spawn gnrf_playerRespawn_fnc;			
		};	
	}];
	player setVariable ["done", true];
};


