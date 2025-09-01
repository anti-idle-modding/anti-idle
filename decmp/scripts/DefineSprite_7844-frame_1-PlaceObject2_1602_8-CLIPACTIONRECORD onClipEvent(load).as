onClipEvent(load){
   function doThis()
   {
      if(_root.fishArray[_parent.ID].material > 0 && _root.save.fishLeft[_parent.ID] > 0)
      {
         _root.save.fishLeft[_parent.ID] -= 1;
         _root.save.arenaCraft += Math.round(_root.fishArray[_parent.ID].material * mult);
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
