on(release){
   _root.save.progTutorial = true;
   if(_root.optionsScreen._currentframe != 20)
   {
      _root.optionsScreen.gotoAndStop(20);
   }
   else
   {
      _root.optionsScreen.gotoAndStop(1);
   }
}
