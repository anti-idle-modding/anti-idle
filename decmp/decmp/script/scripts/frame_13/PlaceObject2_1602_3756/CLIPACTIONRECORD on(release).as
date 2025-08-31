on(release){
   if(_root.save.bestLevel >= 1250 && _root.saveid < 10)
   {
      if(_root.optionsScreen._currentframe != 27)
      {
         _root.optionsScreen.gotoAndStop(27);
      }
      else
      {
         _root.optionsScreen.gotoAndStop(1);
      }
   }
   else if(_root.saveid >= 10)
   {
      _root.showPopup("Access Denied","Simulation Cyborg is unavailable in Speedrun Mode and Challenges.");
   }
   else
   {
      _root.showPopup("Level 1250 Required","You have to be at least Lv. 1250. Keep playing!");
   }
}
