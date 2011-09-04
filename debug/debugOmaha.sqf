[] execVM "sectors\omaha\initOmaha.sqf";
hint "Initiating Omaha.";

waitUntil {omahaReady};

hint "Initialization complete. Clearing sector.";

omahaAlpha_leader setDamage 1;
omahaAlpha2 setDamage 1;
omahaAlpha3 setDamage 1;

omahaBravo_leader setDamage 1;
omahaBravo2 setDamage 1;
omahaBravo3 setDamage 1;

omahaCharlie_leader setDamage 1;
omahaCharlie2 setDamage 1;
omahaCharlie3 setDamage 1;

omahaDelta_leader setDamage 1;
omahaDelta2 setDamage 1;

omahaExtra1_leader SetDamage 1;
omahaExtra2_leader SetDamage 1;
omahaExtra3_leader SetDamage 1;
omahaExtra32 SetDamage 1;
omahaExtra33 SetDamage 1;
