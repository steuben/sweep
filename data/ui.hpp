class wurstDialog {
  idd = -1;
  movingEnable = true;
  controlsBackground[] = {"bgShape","titleHome"};
  controls[] = {"btn_reqFiremission","btn_reqAirsupport","btn_reqCarpetbomb","btn_reqSatscan","subtitleH1_support_artillery","subtitleH1_support_air","subtitleH1_support_satscan"};
  objects[] = {};
  
  class ButtonControlContent {
    idc = -1;
    type = 1;
    style = 2;
    moving = false;
	
    x = 0.45;
    y = 0.4;
    h = 0.07;
    w = 0.18;
	
    font = "EtelkaMonospaceProBold";
    sizeEx = 0.026;
	
    // action uses script commands to close dialog and display a hint
    action = ""
    
    default = false;
    colorText[] = {1,1,1,1}; // white
    colorFocused[] = {0.7, 0.7, 0.4,1}; // green
    colorShadow[] = {0.8,0.8,0.8,0}; // darkgrey
    colorBorder[] = {0.5,0.5,0.5,1}; // grey
    colorBackground[] = {0.6, 0.6, 0.3,1};
    colorBackgroundActive[] = {0.2,0.2,0.1,1}; // green
    colorDisabled[] = {0.6,0.6,0.6,1}; // red
    colorBackgroundDisabled[] = {0.3,0.3,0.3,1}; // grey
    borderSize = 0.000;
    offsetX = 0.005;
    offsetY = 0.005;
    offsetPressedX = 0.002;
    offsetPressedY = 0.002;
    soundEnter[] = {"",0,1}; // NoSound
    soundPush[] = {"",0,1}; // NoSound
    soundClick[] = {"",0,1}; // NoSound
    soundEscape[] = {"",0,1}; // NoSound
	
	text = "";
	
  };
  
  
  class btn_reqFiremission:ButtonControlContent {
    
	idc = -1;
    type = 1;
	
    x = 0.42;
    y = 0.37;
	
	text = "MC BATTERY";
	action = "closeDialog 0; hint ""Close pushed"";"	
  };
  
  class btn_reqSatscan:ButtonControlContent {
    
	idc = -1;
    type = 1;
	
    x = 0.42;
    y = 0.533;
	
	text = "SATSCAN";
	action = "closeDialog 0; hint ""Close pushed"";"	
  };
  
  
  class btn_reqAirsupport:ButtonControlContent {
    
	idc = -1;
    type = 1;
	
    x = 0.714;
    y = 0.37;
	
	text = "CAS 'MANATEE'";
	action = "closeDialog 0; hint ""Close pushed"";"	
  };
  
  class btn_reqCarpetbomb:ButtonControlContent {
    
	idc = -1;
    type = 1;
	
    x = 0.714;
    y = 0.46;
	
	text = "CARPET BOMBER";
	action = "closeDialog 0; hint ""Close pushed"";"	
  };
  
  class btn_close {
    
	idc = -1;
    type = 1;
    style = 2;
    moving = false;
	
    x = 0.45;
    y = 0.4;
    h = 0.07;
    w = 0.10;
	
    font = "EtelkaMonospaceProBold";
    sizeEx = 0.026;
	
    // action uses script commands to close dialog and display a hint
    action = "closeDialog 0;"	
    
    default = false;
    colorText[] = {1,1,1,1}; // white
    colorFocused[] = {0.7, 0.7, 0.4,0}; // green
    colorShadow[] = {0.8,0.8,0.8,0}; // darkgrey
    colorBorder[] = {0,0.5,0.5,0}; // grey
    colorBackground[] = {0, 0, 0,1};
    colorBackgroundActive[] = {0,0,0,1}; // green
    colorDisabled[] = {0.6,0.6,0.6,1}; // red
    colorBackgroundDisabled[] = {0.3,0.3,0.3,0}; // grey
    borderSize = 0.000;
    offsetX = 0.005;
    offsetY = 0.005;
    offsetPressedX = 0.002;
    offsetPressedY = 0.002;
    soundEnter[] = {"",0,1}; // NoSound
    soundPush[] = {"",0,1}; // NoSound
    soundClick[] = {"",0,1}; // NoSound
    soundEscape[] = {"",0,1}; // NoSound
	
	text = "close [X]";
	
  };
  
  
 // BG CLASSES 
  
  class bgShape 
  {
	idc = -1;
	type =  0 ;  // defined constant
	style = 0;  // defined constant
	moving = true;
	colorText[] = { 0, 0, 0, 1 };
	colorBackground[] = { 0.4, 0.4, 0.3, 0.6 };
	font = "EtelkaMonospaceProBold";  // defined constant
	sizeEx = 0.023;
	x = 0.4; y = 0.2;
	w = 0.6;  h = 0.5;
	text = "";
  };
  
  class titleBarText 
  {
	idc = -1;
	type =  0 ;  // defined constant
	style = 0;  // defined constant
	moving = true;
	colorText[] = { 0.8, 0.8, 0.3, 1 };
	colorBackground[] = { 0.2, 0.2, 0.2, 1 };
	font = "EtelkaMonospaceProBold";  // defined constant
	sizeEx = 0.043;
	x = 0.4; y = 0.2;
	w = 0.6;  h = 0.08;
	text = "";
  };
  
  class subtitleH1 
  {
	idc = -1;
	type =  0 ;  // defined constant
	style = 0;  // defined constant
	moving = true;
	colorText[] = { 1, 1, 1, 1 };
	colorBackground[] = { 0.2, 0.2, 0.2, 0 };
	font = "Zeppelin33";  // defined constant
	sizeEx = 0.03;
	x = 0.4; y = 0.32;
	w = 0.3;  h = 0.1;
	text = "";
  };
  
  class titleHome : titleBarText
  {
	text = " BLUFOR ASS.MAN";
  };
  
  class subtitleH1_support_artillery : subtitleH1
  {
	text = "ARTILLERY SUPPORT";
	x = 0.415; y = 0.28;
	
  };
  
  class subtitleH1_support_air : subtitleH1
  {
	text = "AIR SUPPORT";
	x = 0.71; y = 0.28;
	
  };
  
  class subtitleH1_support_satscan : subtitleH1
  {
	text = "ADVANCED ASSETS";
	x = 0.415; y = 0.4435;
	
  };
  
  
  
};