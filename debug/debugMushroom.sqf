[] execVM "sectors\mushroom\initMushroom.sqf";
hint "Initiating Mushroom.";

waitUntil {mushroomReady};

hint "Initialization complete. Clearing sector.";

mushroomAlpha_leader SetDamage 1;
mushroomAlpha2 SetDamage 1;
mushroomAlpha3 SetDamage 1;
mushroomAlpha4 SetDamage 1;

mushroomBravo_leader SetDamage 1;
mushroomBravo2 SetDamage 1;
mushroomBravo3 SetDamage 1;
mushroomBravo4 SetDamage 1;

mushroomCharlie_leader SetDamage 1;
mushroomCharlie2 SetDamage 1;
mushroomCharlie3 SetDamage 1;
mushroomCharlie4 SetDamage 1;

mushroomDelta_leader SetDamage 1;
mushroomDelta2 SetDamage 1;
mushroomDelta3 SetDamage 1;
mushroomDelta4 SetDamage 1;

mushroomSniper_leader SetDamage 1;
mushroomSniper2 SetDamage 1;

mushroomExtra1_leader SetDamage 1;
mushroomExtra2_leader SetDamage 1;

mushroomVictorBaseGroup_leader SetDamage 1;

