onClipEvent(load){
   function calcSkillCost()
   {
      skillCost = baseCost * (_root.save.epicSkill[ID] + 1);
      if(_root.save.epicSkill[ID] >= baseMaxLevel)
      {
         skillCost *= 10;
      }
   }
   ID = 4;
   maxLevel = 20;
   baseMaxLevel = maxLevel;
   baseCost = 200000000;
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
   skillName = "Battery Booster";
   skillDesc = "gain 1 Battery Charge.";
}
