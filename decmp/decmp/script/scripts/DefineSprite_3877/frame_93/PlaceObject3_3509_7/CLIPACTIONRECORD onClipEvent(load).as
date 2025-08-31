onClipEvent(load){
   pokaystopID = 7;
   if(_root.save.pokayCD[pokaystopID] > 0)
   {
      gotoAndStop(60);
   }
   else
   {
      gotoAndStop(1);
   }
}
