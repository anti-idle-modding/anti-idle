on(release){
   if(_root.save.dailyPending == true)
   {
      _root.welcomeBack.gotoAndStop(2);
      _root.save.dailyPending = false;
      if(_root.save.curDateID != _root.clock_date && _root.saveid <= 4)
      {
         gotoAndStop(3);
      }
      else
      {
         gotoAndStop(1);
      }
   }
   _root.actiondescription = "";
}
