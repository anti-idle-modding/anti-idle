onClipEvent(enterFrame){
   if(_root.save.featureIdleMode == false && _root.save.rewardBotTime <= 0)
   {
      fts = 3;
   }
   else if(_root.save.rewardBotTime > 0)
   {
      if(_root.save.idleMode == false)
      {
         fts = 4;
      }
      else
      {
         fts = 5;
      }
   }
   else if(_root.save.idleMode == false)
   {
      fts = 1;
   }
   else if(_root.save.idleMode == true)
   {
      fts = 2;
   }
   if(_currentframe != fts)
   {
      gotoAndStop(fts);
   }
}
