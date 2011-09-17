
//////////global client actions//////////

waitUntil {!isNil "gnrf_drebinFlagPole"};
gnrf_buildDrebin_Act = gnrf_drebinFlagPole addAction [("<t color=""#1F67CC"">" + ("Establish Camp Drebin") + "</t>"),"gen_action.sqf",[{

	if (!isNil "gnrf_drebinEst") exitWith {};
	gnrf_drebinEst = true;
	publicVariable "gnrf_drebinEst";
	[0, {[] execVM "extras\campDrebin.sqf";}] call CBA_fnc_globalExecute;

}],0,true,true,"",""];




