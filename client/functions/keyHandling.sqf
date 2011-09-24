
private["_handled", "_ctrl", "_dikCode", "_shift", "_ctrlKey", "_alt"];
_ctrl = _this select 0;
_dikCode = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;  
_handled = false;

switch (_dikCode) do 
{	
	case 79 : {if (!_shift && !_ctrlKey && !_alt) then  {call gnrf_turboAtv_keyDown; _handled = true}};
	
	case 70 : {if (!_shift && !_ctrlKey && !_alt) then  {_ok = createDialog "uiAssmanStart"; _handled = true}};
};

_handled;  