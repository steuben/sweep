class uiAssmanStart 
{

  idd = -1;
  movingEnable = true;
  controlsBackground[] = {"bgShape","titleHome"};
  controls[] = {"btn_reqFiremission","btn_reqAirsupport","btn_reqCarpetbomb","btn_reqSatscan","subtitleH1_support_artillery","subtitleH1_support_air","subtitleH1_support_satscan", "btn_close"};
  objects[] = {};
  
  #include "assmanUI.hpp"
};

class uiAssmanDismissMortars 
{

  idd = -1;
  movingEnable = true;
  controlsBackground[] = {"bgShape","titleHome"};
  controls[] = {"titleDismissMortars","btn_backToStart","btn_dismissMortars","btn_close"};
  objects[] = {};
  
  #include "assmanUI.hpp"
};

class uiAssmanDismissCAS 
{

  idd = -1;
  movingEnable = true;
  controlsBackground[] = {"bgShape","titleHome"};
  controls[] = {"titleDismissCAS","btn_backToStart","btn_dismissCAS","btn_close"};
  objects[] = {};
  
  #include "assmanUI.hpp"
};