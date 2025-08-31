onClipEvent(load){
   deserve = 0;
   if(_root.save.bestLevel >= 100)
   {
      deserve = 1;
   }
   if(_root.save.bestLevel >= 250)
   {
      deserve = 2;
   }
   if(_root.save.bestLevel >= 500)
   {
      deserve = 3;
   }
   if(_root.save.bestLevel >= 1000)
   {
      deserve = 3 + Math.floor(_root.save.bestLevel / 1000);
   }
   if(_root.save.bestLevel >= 9001)
   {
      deserve = 13;
   }
   if(_root.save.dragonReward >= deserve)
   {
      gotoAndStop(2);
   }
}
