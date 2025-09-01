onClipEvent(load){
   skillID = 54;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = 0;
   damagePower = 100 + skillLevel * 5;
   if(_root.save.permaBanPenalty[15] == 3)
   {
      damagePower += 200;
   }
   else if(_root.save.permaBanPenalty[15] == 2)
   {
      damagePower += 120;
   }
   else if(_root.save.permaBanPenalty[15] == 1)
   {
      damagePower += 80;
   }
   if(_root.save.arenaSkill[7] >= 1)
   {
      damagePower += 100;
   }
   knockBack = 0;
   skillDelay = 150;
   if(_root.save.arenaSkill[6] >= 1)
   {
      skillDelay = 125;
   }
}
