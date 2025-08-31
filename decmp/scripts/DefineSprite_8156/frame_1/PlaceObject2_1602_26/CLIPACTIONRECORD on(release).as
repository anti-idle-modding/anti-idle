on(release){
   if(_root.optionsScreen._currentframe < 29 || _root.optionsScreen._currentframe > 32)
   {
      _root.optionsScreen.gotoAndStop(28 + _root.shopScreenPage);
   }
   else
   {
      _root.optionsScreen.gotoAndStop(1);
   }
}
