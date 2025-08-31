on(release){
   if(_root.saveid == 24)
   {
      _root.showPopup("NOOOOOOOOO!","You must resist your urges. You don\'t want to fail the challenge, do you?");
   }
   else if(_root.save.bestLevel >= 700)
   {
      if(_root.optionsScreen._currentframe != 10)
      {
         _root.optionsScreen.gotoAndStop(10);
      }
      else
      {
         _root.optionsScreen.gotoAndStop(1);
      }
   }
   else
   {
      _root.showPopup("Level 700 Required","You have to be at least Lv. 700. Keep playing!");
   }
}
