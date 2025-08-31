onClipEvent(load){
   skillID = 2;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = Math.floor(160 - skillLevel * 2);
   damagePower = Math.floor(900 + skillLevel * 30);
   spiritMult = 1;
   knockBack = 0;
   skillDelay = 600;
   skillDuration = Math.floor(2 + skillLevel * 0.1);
   if(_root.save.arenaSkill[7] >= 1)
   {
      skillDuration += 2;
   }
}
