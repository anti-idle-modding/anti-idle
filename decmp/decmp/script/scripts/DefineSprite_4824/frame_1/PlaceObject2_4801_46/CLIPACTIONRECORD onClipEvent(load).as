onClipEvent(load){
   skillID = 1;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = Math.floor(70 + skillLevel * 1);
   damagePower = Math.floor(45 + skillLevel * 1 + _root.save.arenaSkill[3] * 5);
   if(_root.save.permaBanPenalty[15] == 3)
   {
      damagePower += 75;
   }
   else if(_root.save.permaBanPenalty[15] == 2)
   {
      damagePower += 45;
   }
   else if(_root.save.permaBanPenalty[15] == 1)
   {
      damagePower += 30;
   }
   knockBack = 0;
   skillDelay = Math.floor(160 - skillLevel * 2);
   hitCount = 3;
   if(_root.save.arenaSkill[6] >= 1)
   {
      hitCount = 4;
   }
}
