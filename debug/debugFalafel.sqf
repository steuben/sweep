[] execVM "sectors\falafel\initFalafel.sqf";
hint "Initiating Falafel.";

waitUntil {falafelReady};

hint "Initialization complete. Clearing sector.";

falafelAlpha_leader SetDamage 1;
falafelAlpha2 SetDamage 1;
falafelAlpha3 SetDamage 1;

falafelBravo_leader SetDamage 1;
falafelBravo2 SetDamage 1;
falafelBravo3 SetDamage 1;
falafelBravo4 SetDamage 1;
falafelBravo5 SetDamage 1;
falafelBravo6 SetDamage 1;
falafelBravo7 SetDamage 1;
falafelBravo8 SetDamage 1;

falafelCharlie_leader SetDamage 1;
falafelCharlie2 SetDamage 1;
falafelCharlie3 SetDamage 1;
falafelCharlie4 SetDamage 1;
falafelCharlie5 SetDamage 1;

falafelExtra1_leader SetDamage 1;

