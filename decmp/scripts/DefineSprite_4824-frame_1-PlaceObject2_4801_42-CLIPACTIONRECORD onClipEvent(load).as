onClipEvent(load){
   hotkey = 71;
   skillID = 0;
   skillLevel = 1;
   mpCost = 0;
   damagePower = 100 + Math.floor(_root.save.arenaSkill[54] * 5);
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
   skillDelay = 175;
   if(_root.save.arenaSkill[6] >= 1)
   {
      skillDelay = 150;
   }
}
