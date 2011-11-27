
setViewDistance 4500;

	assaultSetCreating = false;
	publicVariable "assaultSetCreating";
	hint "Initializing OPFOR counterattack";

	sleep 15;
	
	waitUntil {!assaultSetCreating};
	[] execVM "extras\opforAssault\assaultMechanizedInf.sqf";
	
	waitUntil {!assaultSetCreating};
	[] execVM "extras\opforAssault\assaultRiflesquads.sqf";
	
	waitUntil {!assaultSetCreating};
	[] execVM "extras\opforAssault\assaultSupportVehicles.sqf";
	
	waitUntil {!assaultSetCreating};
	[] execVM "extras\opforAssault\assaultTanks.sqf";

	waitUntil {!assaultSetCreating};
	[] execVM "extras\opforAssault\assaultBlufor.sqf";
	
	
	