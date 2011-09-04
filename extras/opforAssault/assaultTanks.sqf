	assaultSetCreating = true;
	publicVariable "assaultSetCreating";
	
	opforAssaultTank1 = createGroup EAST;
	assaultTank1 = "ACE_T72BA_Base" createVehicle getMarkerPos "opforAttack_tank_spawn_1";

	"ACE_RU_Soldier_Crew_D" createUnit [getMarkerPos "opforAttack_tank_spawn_1", opforAssaultTank1, "opforAssaultTank1_commander=this; this moveInCommander assaultTank1;", 0.7, "Captain"];
	"ACE_RU_Soldier_Crew_D" createUnit [getMarkerPos "opforAttack_tank_spawn_1", opforAssaultTank1, "opforAssaultTank1_gunner=this; this moveInGunner assaultTank1;", 0.7, "Sergeant"];
	"ACE_RU_Soldier_Crew_D" createUnit [getMarkerPos "opforAttack_tank_spawn_1", opforAssaultTank1, "opforAssaultTank1_driver=this; this moveInDriver assaultTank1;", 0.7, "Corporal"];

	_wp1_opforAssaultTank1 = opforAssaultTank1 addWaypoint [getMarkerPos "opforAttack_tank_assemble", 2];
	_wp1_opforAssaultTank1 setWaypointType "MOVE";
	_wp1_opforAssaultTank1 setWaypointFormation "WEDGE";
	_wp1_opforAssaultTank1 setWaypointBehaviour "COMBAT";
	_wp1_opforAssaultTank1 setWaypointSpeed "NORMAL";
	_wp1_opforAssaultTank1 setWaypointStatements ["true", ""];
	_wp1_opforAssaultTank1 setWaypointTimeout [0, 0, 0];
	
	_wp2_opforAssaultTank1 = opforAssaultTank1 addWaypoint [getMarkerPos "opforAttack_tank_assault1", 2];
	_wp2_opforAssaultTank1 setWaypointType "MOVE";
	_wp2_opforAssaultTank1 setWaypointFormation "WEDGE";
	_wp2_opforAssaultTank1 setWaypointBehaviour "COMBAT";
	_wp2_opforAssaultTank1 setWaypointSpeed "FULL";
	_wp2_opforAssaultTank1 setWaypointStatements ["true", ""];
	_wp2_opforAssaultTank1 setWaypointTimeout [0, 0, 0];	
	
	opforAssaultTank2 = createGroup EAST;
	assaultTank2 = "ACE_T72BA_Base" createVehicle getMarkerPos "opforAttack_tank_spawn_2";

	"ACE_RU_Soldier_Crew_D" createUnit [getMarkerPos "opforAttack_tank_spawn_2", opforAssaultTank2, "opforAssaultTank2_commander=this; this moveInCommander assaultTank2;", 0.7, "Captain"];
	"ACE_RU_Soldier_Crew_D" createUnit [getMarkerPos "opforAttack_tank_spawn_2", opforAssaultTank2, "opforAssaultTank2_gunner=this; this moveInGunner assaultTank2;", 0.7, "Sergeant"];
	"ACE_RU_Soldier_Crew_D" createUnit [getMarkerPos "opforAttack_tank_spawn_2", opforAssaultTank2, "opforAssaultTank2_driver=this; this moveInDriver assaultTank2;", 0.7, "Corporal"];

	_wp1_opforAssaultTank2 = opforAssaultTank2 addWaypoint [getMarkerPos "opforAttack_tank_assemble2", 2];
	_wp1_opforAssaultTank2 setWaypointType "MOVE";
	_wp1_opforAssaultTank2 setWaypointFormation "WEDGE";
	_wp1_opforAssaultTank2 setWaypointBehaviour "COMBAT";
	_wp1_opforAssaultTank2 setWaypointSpeed "NORMAL";
	_wp1_opforAssaultTank2 setWaypointStatements ["true", ""];
	_wp1_opforAssaultTank2 setWaypointTimeout [0, 0, 0];
	
	_wp2_opforAssaultTank2 = opforAssaultTank2 addWaypoint [getMarkerPos "opforAttack_tank_assault2", 2];
	_wp2_opforAssaultTank2 setWaypointType "MOVE";
	_wp2_opforAssaultTank2 setWaypointFormation "WEDGE";
	_wp2_opforAssaultTank2 setWaypointBehaviour "COMBAT";
	_wp2_opforAssaultTank2 setWaypointSpeed "FULL";
	_wp2_opforAssaultTank2 setWaypointStatements ["true", ""];
	_wp2_opforAssaultTank2 setWaypointTimeout [0, 0, 0];	
	
	
	
	assaultSetCreating = false;
	publicVariable "assaultSetCreating";