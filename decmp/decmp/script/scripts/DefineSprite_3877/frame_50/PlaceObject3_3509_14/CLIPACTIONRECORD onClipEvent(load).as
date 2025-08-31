onClipEvent(load){
   pokaystopID = 2;
   if(_root.save.pokayCD[pokaystopID] > 0)
   {
      gotoAndStop(60);
   }
   else
   {
      gotoAndStop(1);
   }
}
