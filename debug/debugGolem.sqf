[] execVM "sectors\golem\initGolem.sqf";
hint "Initiating Golem.";

waitUntil {golemReady};

hint "Initialization complete. Clearing sector.";

golemAlpha_leader SetDamage 1;

golemBravo_leader SetDamage 1;
golemBravo2 SetDamage 1;
golemBravo3 SetDamage 1;
golemBravo4 SetDamage 1;

golemCharlie_leader SetDamage 1;
golemCharlie2 SetDamage 1;
golemCharlie3 SetDamage 1;

golemExtra1_leader SetDamage 1;
golemExtra2_leader SetDamage 1;

