onClipEvent(load){
   ID = 3;
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
   skillName = "Money Mastery";
   skillDesc = "gain 20,000 Coins and 100 Green Coins";
}
