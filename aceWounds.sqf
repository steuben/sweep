
//Number of seconds before a badly wounded ( i.e. unconcious ) player dies. Positive integer.
ace_wounds_prevtime = 120;

//How much damage is max left when healed in the field, 
//(is multiplied times the amount the unit was healed in the field already), instead of healed at a medical facility
//Set to 0 for full heal
ace_sys_wounds_leftdam = 0.07;

//Makes everyone a medic
ace_sys_wounds_all_medics = false;

//Should (non medic) AI units automatically assist unconscious units in their group? Second VAR is for inter-group-assistance.
ace_sys_wounds_auto_assist = false;
ace_sys_wounds_auto_assist_any = false;

//Should medical vehicles be usable as medical facilities?
//ace_sys_wounds_no_medical_vehicles = true;

//To disable the adding of medical gear
//ace_sys_wounds_no_medical_gear = true;



//SPECIFICS

steuben setVariable ["ace_w_ismedic",true]; // TL can use epi/morphine
bbq setVariable ["ace_w_ismedic",true]; // TL can use epi/morphine

medevacVictor setVariable ["ace_w_heal", true]; // Amberlamps is ace-medicalFacility


steuben2 setVariable ["ace_sys_wounds_no_medical_gear",true];
steuben3 setVariable ["ace_sys_wounds_no_medical_gear",true];
steuben4 setVariable ["ace_sys_wounds_no_medical_gear",true];
steuben5 setVariable ["ace_sys_wounds_no_medical_gear",true];
steuben8 setVariable ["ace_sys_wounds_no_medical_gear",true];
steuben9 setVariable ["ace_sys_wounds_no_medical_gear",true];

bbq2 setVariable ["ace_sys_wounds_no_medical_gear",true];
bbq3 setVariable ["ace_sys_wounds_no_medical_gear",true];
bbq4 setVariable ["ace_sys_wounds_no_medical_gear",true];
bbq5 setVariable ["ace_sys_wounds_no_medical_gear",true];
bbq6 setVariable ["ace_sys_wounds_no_medical_gear",true];
bbq7 setVariable ["ace_sys_wounds_no_medical_gear",true];
bbq8 setVariable ["ace_sys_wounds_no_medical_gear",true];
bbq9 setVariable ["ace_sys_wounds_no_medical_gear",true];


