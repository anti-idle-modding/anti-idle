onClipEvent(enterFrame){
   if(_root.save.pokayCD[pokaystopID] > 0 && _root.save.pokayCD[pokaystopID] < 60)
   {
      gotoAndStop(Math.ceil(120 - _root.save.pokayCD[pokaystopID]));
   }
   if(_root.save.pokayCD[pokaystopID] <= 0)
   {
      gotoAndStop(1);
   }
}
