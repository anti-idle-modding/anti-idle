on(release){
   if(_root.save.newbieProgress == 14)
   {
      _root.save.newbieProgress = 15;
   }
   if(_root.optionsScreen._currentframe != 6)
   {
      _root.save.viewAchievement += 1;
      _root.optionsScreen.gotoAndStop(6);
   }
   else
   {
      _root.optionsScreen.gotoAndStop(1);
   }
}
