on(release){
   if(_root.saveid == 24)
   {
      _root.showPopup("NOOOOOOOOO!","You must resist your urges. You don\'t want to fail the challenge, do you?");
   }
   else if(_root.save.bestLevel >= 900)
   {
      if(_root.optionsScreen._currentframe != 14 && _root.optionsScreen._currentframe != 15)
      {
         _root.optionsScreen.gotoAndStop(14);
      }
      else
      {
         _root.optionsScreen.gotoAndStop(1);
      }
   }
   else
   {
      _root.showPopup("Level 900 Required","You have to be at least Lv. 900. Keep playing!");
   }
}
