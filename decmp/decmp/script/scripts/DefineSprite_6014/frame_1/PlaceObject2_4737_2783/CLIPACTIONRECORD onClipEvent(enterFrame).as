onClipEvent(enterFrame){
   del += 1;
   if(del >= 10)
   {
      del = 0;
      buffText.text = _root.convertSec(_root.save.arenaBuffDuration);
      if(_root.save.arenaBuffType == 0)
      {
         buffText.text = "";
      }
   }
}
