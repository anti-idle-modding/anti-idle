onClipEvent(load){
   skillID = 54;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = 0;
   damagePower = 200 + skillLevel * 10;
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
   spiritMult = 0.2;
   knockBack = 0;
   skillDelay = 125;
}
