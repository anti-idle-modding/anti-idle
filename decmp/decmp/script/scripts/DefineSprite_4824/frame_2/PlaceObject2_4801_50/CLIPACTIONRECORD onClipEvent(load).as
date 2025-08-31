onClipEvent(load){
   skillID = 1;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = Math.floor(80 - skillLevel * 1);
   damagePower = Math.floor(600 + skillLevel * 20);
   spiritMult = 0.5;
   knockBack = 0;
   skillDelay = 600;
   skillDuration = Math.floor(2 + skillLevel * 0.1);
   if(_root.save.arenaSkill[6] >= 1)
   {
      skillDuration += 2;
   }
}
