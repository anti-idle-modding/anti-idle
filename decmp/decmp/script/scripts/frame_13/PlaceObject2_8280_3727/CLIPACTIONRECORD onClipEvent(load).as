onClipEvent(load){
   if(_root.save.dailyPending == true)
   {
      gotoAndStop(2);
   }
   else if(_root.save.curDateID != _root.clock_date && _root.saveid <= 4 && _root.save.bestLevel >= 100)
   {
      gotoAndStop(3);
   }
   else
   {
      gotoAndStop(1);
   }
}
