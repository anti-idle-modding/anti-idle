onClipEvent(load){
   ID = 4;
   maxLevel = 20;
   if(_root.save.permaBanPenalty[3] == 3)
   {
      maxLevel += 5;
   }
   else if(_root.save.permaBanPenalty[3] == 2)
   {
      maxLevel += 3;
   }
   else if(_root.save.permaBanPenalty[3] == 1)
   {
      maxLevel += 2;
   }
   skillName = "Pixel Bonus";
   skillDesc = "gain 1,000 Pixels for the Battle Arena";
}
