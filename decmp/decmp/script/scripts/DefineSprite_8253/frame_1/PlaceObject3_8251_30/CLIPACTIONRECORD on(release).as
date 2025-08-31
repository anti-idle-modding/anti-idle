on(release){
   if(_root.save.featureBoostGen == true)
   {
      if(_root.optionsScreen._currentframe != 4)
      {
         _root.optionsScreen.gotoAndStop(4);
      }
      else
      {
         _root.optionsScreen.gotoAndStop(1);
      }
   }
   else
   {
      _root.showPopup("Boost Generator needed!","You have to purchase the Boost Generator to buy Boost! The Boost Generator can be purchased in the Feature Shop.");
   }
}
