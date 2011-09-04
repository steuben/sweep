	assaultSetCreating = true;
	publicVariable "assaultSetCreating";
	
	opforAssaultSupportVictor1 = createGroup EAST;
	assaultSupportVictor1 = "ACE_UAZ_MG_RU" createVehicle getMarkerPos "opforAttack_support_spawn_1";

	"RU_Soldier" createUnit [getMarkerPos "opforAttack_support_spawn_1", opforAssaultSupportVictor1, "opforAssaultSupportVictor1_driver=this; this moveInDriver assaultSupportVictor1;", 0.7, "Sergeant"];
	"RU_Soldier" createUnit [getMarkerPos "opforAttack_support_spawn_1", opforAssaultSupportVictor1, "opforAssaultSupportVictor1_gunner=this; this moveInGunner assaultSupportVictor1;", 0.7, "Corporal"];

	_wp1_opforAssaultSupportVictor1 = opforAssaultSupportVictor1 addWaypoint [getMarkerPos "opforAttack_support_assemble", 2];
	_wp1_opforAssaultSupportVictor1 setWaypointType "MOVE";
	_wp1_opforAssaultSupportVictor1 setWaypointFormation "WEDGE";
	_wp1_opforAssaultSupportVictor1 setWaypointBehaviour "AWARE";
	_wp1_opforAssaultSupportVictor1 setWaypointSpeed "NORMAL";
	_wp1_opforAssaultSupportVictor1 setWaypointStatements ["true", ""];
	_wp1_opforAssaultSupportVictor1 setWaypointTimeout [50, 50, 50];
	
	_wp2_opforAssaultSupportVictor1 = opforAssaultSupportVictor1 addWaypoint [getMarkerPos "opforAttack_support_cover", 2];
	_wp2_opforAssaultSupportVictor1 setWaypointType "MOVE";
	_wp2_opforAssaultSupportVictor1 setWaypointFormation "WEDGE";
	_wp2_opforAssaultSupportVictor1 setWaypointBehaviour "AWARE";
	_wp2_opforAssaultSupportVictor1 setWaypointSpeed "FULL";
	_wp2_opforAssaultSupportVictor1 setWaypointStatements ["true", ""];
	_wp2_opforAssaultSupportVictor1 setWaypointTimeout [30, 45, 60];
	
	_wp3_opforAssaultSupportVictor1 = opforAssaultSupportVictor1 addWaypoint [getMarkerPos "opforAttack_support_assault1", 2];
	_wp3_opforAssaultSupportVictor1 setWaypointType "MOVE";
	_wp3_opforAssaultSupportVictor1 setWaypointFormation "WEDGE";
	_wp3_opforAssaultSupportVictor1 setWaypointBehaviour "AWARE";
	_wp3_opforAssaultSupportVictor1 setWaypointSpeed "FULL";
	_wp3_opforAssaultSupportVictor1 setWaypointStatements ["true", ""];
	_wp3_opforAssaultSupportVictor1 setWaypointTimeout [0, 0, 0];
	
	_wp4_opforAssaultSupportVictor1 = opforAssaultSupportVictor1 addWaypoint [getMarkerPos "opforAttack_support_assault2", 2];
	_wp4_opforAssaultSupportVictor1 setWaypointType "MOVE";
	_wp4_opforAssaultSupportVictor1 setWaypointFormation "WEDGE";
	_wp4_opforAssaultSupportVictor1 setWaypointBehaviour "AWARE";
	_wp4_opforAssaultSupportVictor1 setWaypointSpeed "FULL";
	_wp4_opforAssaultSupportVictor1 setWaypointStatements ["true", ""];
	_wp4_opforAssaultSupportVictor1 setWaypointTimeout [0, 0, 0];
	
	opforAssaultSupportVictor2 = createGroup EAST;
	assaultSupportVictor2 = "UAZ_AGS30_RU" createVehicle getMarkerPos "opforAttack_support_spawn_2";

	"RU_Soldier" createUnit [getMarkerPos "opforAttack_support_spawn_2", opforAssaultSupportVictor2, "opforAssaultSupportVictor2_driver=this; this moveInDriver assaultSupportVictor2;", 0.7, "Sergeant"];
	"RU_Soldier" createUnit [getMarkerPos "opforAttack_support_spawn_2", opforAssaultSupportVictor2, "opforAssaultSupportVictor2_gunner=this; this moveInGunner assaultSupportVictor2;", 0.7, "Corporal"];

	_wp1_opforAssaultSupportVictor2 = opforAssaultSupportVictor2 addWaypoint [getMarkerPos "opforAttack_support_assemble", 2];
	_wp1_opforAssaultSupportVictor2 setWaypointType "MOVE";
	_wp1_opforAssaultSupportVictor2 setWaypointFormation "WEDGE";
	_wp1_opforAssaultSupportVictor2 setWaypointBehaviour "AWARE";
	_wp1_opforAssaultSupportVictor2 setWaypointSpeed "NORMAL";
	_wp1_opforAssaultSupportVictor2 setWaypointStatements ["true", ""];
	_wp1_opforAssaultSupportVictor2 setWaypointTimeout [50, 50, 50];
	
	_wp2_opforAssaultSupportVictor2 = opforAssaultSupportVictor2 addWaypoint [getMarkerPos "opforAttack_support_cover", 2];
	_wp2_opforAssaultSupportVictor2 setWaypointType "MOVE";
	_wp2_opforAssaultSupportVictor2 setWaypointFormation "WEDGE";
	_wp2_opforAssaultSupportVictor2 setWaypointBehaviour "AWARE";
	_wp2_opforAssaultSupportVictor2 setWaypointSpeed "FULL";
	_wp2_opforAssaultSupportVictor2 setWaypointStatements ["true", ""];
	_wp2_opforAssaultSupportVictor2 setWaypointTimeout [30, 45, 60];
	
	_wp3_opforAssaultSupportVictor2 = opforAssaultSupportVictor2 addWaypoint [getMarkerPos "opforAttack_support_assault1", 2];
	_wp3_opforAssaultSupportVictor2 setWaypointType "MOVE";
	_wp3_opforAssaultSupportVictor2 setWaypointFormation "WEDGE";
	_wp3_opforAssaultSupportVictor2 setWaypointBehaviour "AWARE";
	_wp3_opforAssaultSupportVictor2 setWaypointSpeed "FULL";
	_wp3_opforAssaultSupportVictor2 setWaypointStatements ["true", ""];
	_wp3_opforAssaultSupportVictor2 setWaypointTimeout [0, 0, 0];
	
	_wp4_opforAssaultSupportVictor2 = opforAssaultSupportVictor2 addWaypoint [getMarkerPos "opforAttack_support_assault2", 2];
	_wp4_opforAssaultSupportVictor2 setWaypointType "MOVE";
	_wp4_opforAssaultSupportVictor2 setWaypointFormation "WEDGE";
	_wp4_opforAssaultSupportVictor2 setWaypointBehaviour "AWARE";
	_wp4_opforAssaultSupportVictor2 setWaypointSpeed "FULL";
	_wp4_opforAssaultSupportVictor2 setWaypointStatements ["true", ""];
	_wp4_opforAssaultSupportVictor2 setWaypointTimeout [0, 0, 0];
	
	opforAssaultSupportVictor3 = createGroup EAST;
	assaultSupportVictor3 = "ACE_UAZ_MG_RU" createVehicle getMarkerPos "opforAttack_support_spawn_3";

	"RU_Soldier" createUnit [getMarkerPos "opforAttack_support_spawn_3", opforAssaultSupportVictor3, "opforAssaultSupportVictor3_driver=this; this moveInDriver assaultSupportVictor3;", 0.7, "Sergeant"];
	"RU_Soldier" createUnit [getMarkerPos "opforAttack_support_spawn_3", opforAssaultSupportVictor3, "opforAssaultSupportVictor3_gunner=this; this moveInGunner assaultSupportVictor3;", 0.7, "Corporal"];

	_wp1_opforAssaultSupportVictor3 = opforAssaultSupportVictor3 addWaypoint [getMarkerPos "opforAttack_support_assemble2", 2];
	_wp1_opforAssaultSupportVictor3 setWaypointType "MOVE";
	_wp1_opforAssaultSupportVictor3 setWaypointFormation "WEDGE";
	_wp1_opforAssaultSupportVictor3 setWaypointBehaviour "AWARE";
	_wp1_opforAssaultSupportVictor3 setWaypointSpeed "NORMAL";
	_wp1_opforAssaultSupportVictor3 setWaypointStatements ["true", ""];
	_wp1_opforAssaultSupportVictor3 setWaypointTimeout [50, 50, 50];
	
	_wp2_opforAssaultSupportVictor3 = opforAssaultSupportVictor3 addWaypoint [getMarkerPos "opforAttack_support_cover2", 2];
	_wp2_opforAssaultSupportVictor3 setWaypointType "MOVE";
	_wp2_opforAssaultSupportVictor3 setWaypointFormation "WEDGE";
	_wp2_opforAssaultSupportVictor3 setWaypointBehaviour "AWARE";
	_wp2_opforAssaultSupportVictor3 setWaypointSpeed "FULL";
	_wp2_opforAssaultSupportVictor3 setWaypointStatements ["true", ""];
	_wp2_opforAssaultSupportVictor3 setWaypointTimeout [30, 45, 60];
	
	_wp3_opforAssaultSupportVictor3 = opforAssaultSupportVictor3 addWaypoint [getMarkerPos "opforAttack_support_assault3", 2];
	_wp3_opforAssaultSupportVictor3 setWaypointType "MOVE";
	_wp3_opforAssaultSupportVictor3 setWaypointFormation "WEDGE";
	_wp3_opforAssaultSupportVictor3 setWaypointBehaviour "AWARE";
	_wp3_opforAssaultSupportVictor3 setWaypointSpeed "FULL";
	_wp3_opforAssaultSupportVictor3 setWaypointStatements ["true", ""];
	_wp3_opforAssaultSupportVictor3 setWaypointTimeout [0, 0, 0];
	
	_wp4_opforAssaultSupportVictor3 = opforAssaultSupportVictor3 addWaypoint [getMarkerPos "opforAttack_support_assault4", 2];
	_wp4_opforAssaultSupportVictor3 setWaypointType "MOVE";
	_wp4_opforAssaultSupportVictor3 setWaypointFormation "WEDGE";
	_wp4_opforAssaultSupportVictor3 setWaypointBehaviour "AWARE";
	_wp4_opforAssaultSupportVictor3 setWaypointSpeed "FULL";
	_wp4_opforAssaultSupportVictor3 setWaypointStatements ["true", ""];
	_wp4_opforAssaultSupportVictor3 setWaypointTimeout [0, 0, 0];
	
	
	
	opforAssaultSupportVictor4 = createGroup EAST;
	assaultSupportVictor4 = "UAZ_AGS30_RU" createVehicle getMarkerPos "opforAttack_support_spawn_4";

	"RU_Soldier" createUnit [getMarkerPos "opforAttack_support_spawn_4", opforAssaultSupportVictor4, "opforAssaultSupportVictor4_driver=this; this moveInDriver assaultSupportVictor4;", 0.7, "Sergeant"];
	"RU_Soldier" createUnit [getMarkerPos "opforAttack_support_spawn_4", opforAssaultSupportVictor4, "opforAssaultSupportVictor4_gunner=this; this moveInGunner assaultSupportVictor4;", 0.7, "Corporal"];

	_wp1_opforAssaultSupportVictor4 = opforAssaultSupportVictor4 addWaypoint [getMarkerPos "opforAttack_support_assemble2", 2];
	_wp1_opforAssaultSupportVictor4 setWaypointType "MOVE";
	_wp1_opforAssaultSupportVictor4 setWaypointFormation "WEDGE";
	_wp1_opforAssaultSupportVictor4 setWaypointBehaviour "AWARE";
	_wp1_opforAssaultSupportVictor4 setWaypointSpeed "NORMAL";
	_wp1_opforAssaultSupportVictor4 setWaypointStatements ["true", ""];
	_wp1_opforAssaultSupportVictor4 setWaypointTimeout [50, 50, 50];
	
	_wp2_opforAssaultSupportVictor4 = opforAssaultSupportVictor4 addWaypoint [getMarkerPos "opforAttack_support_cover2", 2];
	_wp2_opforAssaultSupportVictor4 setWaypointType "MOVE";
	_wp2_opforAssaultSupportVictor4 setWaypointFormation "WEDGE";
	_wp2_opforAssaultSupportVictor4 setWaypointBehaviour "AWARE";
	_wp2_opforAssaultSupportVictor4 setWaypointSpeed "FULL";
	_wp2_opforAssaultSupportVictor4 setWaypointStatements ["true", ""];
	_wp2_opforAssaultSupportVictor4 setWaypointTimeout [30, 45, 60];
	
	_wp3_opforAssaultSupportVictor4 = opforAssaultSupportVictor4 addWaypoint [getMarkerPos "opforAttack_support_assault3", 4];
	_wp3_opforAssaultSupportVictor4 setWaypointType "MOVE";
	_wp3_opforAssaultSupportVictor4 setWaypointFormation "WEDGE";
	_wp3_opforAssaultSupportVictor4 setWaypointBehaviour "AWARE";
	_wp3_opforAssaultSupportVictor4 setWaypointSpeed "FULL";
	_wp3_opforAssaultSupportVictor4 setWaypointStatements ["true", ""];
	_wp3_opforAssaultSupportVictor4 setWaypointTimeout [0, 0, 0];
	
	_wp4_opforAssaultSupportVictor4 = opforAssaultSupportVictor4 addWaypoint [getMarkerPos "opforAttack_support_assault4", 4];
	_wp4_opforAssaultSupportVictor4 setWaypointType "MOVE";
	_wp4_opforAssaultSupportVictor4 setWaypointFormation "WEDGE";
	_wp4_opforAssaultSupportVictor4 setWaypointBehaviour "AWARE";
	_wp4_opforAssaultSupportVictor4 setWaypointSpeed "FULL";
	_wp4_opforAssaultSupportVictor4 setWaypointStatements ["true", ""];
	_wp4_opforAssaultSupportVictor4 setWaypointTimeout [0, 0, 0];
	
	
	assaultSetCreating = false;
	publicVariable "assaultSetCreating";