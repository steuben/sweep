
gnrf_initCounter = 0; //this var is increased by when certain scripts are finished, other scripts start when certain value is reached

//setDate as specified by parameter
setDate [2011, 9, 10, (paramsArray select 3), 0];

////// Server only //////
if (!isServer) exitWith {};

[] execVM "extras\ambientCivilians\civInit.sqf";
[paramsArray select 2] execVM "extras\moveCrusader.sqf";

