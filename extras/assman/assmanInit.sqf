

assmanStart = true;
publicVariable "assmanStart";

//dialog test
_newDialog_act= steuben addAction [("<t color=""#00aa00"">" + ("UI Test") + "</t>"),"gen_action.sqf",[{

	gnrf_UI = true;
	_ok = createDialog "uiAssmanStart";
	
}],0,false,false,"","isNil 'gnrf_UI'"];



