onClipEvent(load){
   function calcSkillCost()
   {
      skillCost = baseCost * (_root.save.epicSkill[ID] + 1);
      if(_root.save.epicSkill[ID] >= baseMaxLevel)
      {
         skillCost *= 10;
      }
   }
   ID = 5;
   maxLevel = 10;
   baseMaxLevel = maxLevel;
   baseCost = 500000000;
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
   skillName = "Fanatical Fisher";
   skillDesc = "reduce Fatigue in Fishing by 1.";
}
