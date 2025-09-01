on(release){
   if(_root.optionsScreen._currentframe != 2)
   {
      _root.save.viewOption += 1;
      _root.optionsScreen.gotoAndStop(2);
   }
   else
   {
      _root.optionsScreen.gotoAndStop(1);
   }
}
