on(release){
   if(_root.optionsScreen._currentframe != 18)
   {
      _root.save.viewEvent += 1;
      _root.optionsScreen.gotoAndStop(18);
   }
   else
   {
      _root.optionsScreen.gotoAndStop(1);
   }
}
