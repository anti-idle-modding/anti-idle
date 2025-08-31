onClipEvent(load){
   ID = 6;
   maxLevel = 10;
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
   skillName = "Epic Adventurer";
   skillDesc = "reduce waiting time for next Adventure Energy by 3 seconds";
}
