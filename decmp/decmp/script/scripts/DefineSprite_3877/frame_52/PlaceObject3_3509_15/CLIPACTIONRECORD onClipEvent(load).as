onClipEvent(load){
   pokaystopID = 4;
   if(_root.save.pokayCD[pokaystopID] > 0)
   {
      gotoAndStop(60);
   }
   else
   {
      gotoAndStop(1);
   }
}
