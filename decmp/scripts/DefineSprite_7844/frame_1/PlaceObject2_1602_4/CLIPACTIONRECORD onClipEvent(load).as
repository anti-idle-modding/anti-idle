onClipEvent(load){
   function doThis()
   {
      if(_root.fishArray[_parent.ID].coin > 0 && _root.save.fishLeft[_parent.ID] > 0)
      {
         _root.save.fishLeft[_parent.ID] -= 1;
         _root.gainCoin(Math.floor(_root.fishArray[_parent.ID].coin * Math.pow(_root.save.bestLevel,0.6) * mult));
         _parent.checkStat();
      }
   }
   _alpha = 30;
   focus = false;
   doFr = 0;
   mult = 1;
   if(_root.save.permaBanPenalty[30] == 3)
   {
      mult = 2;
   }
   else if(_root.save.permaBanPenalty[30] == 2)
   {
      mult = 1.6;
   }
   else if(_root.save.permaBanPenalty[30] == 1)
   {
      mult = 1.4;
   }
}
