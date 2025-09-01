onClipEvent(load){
   skillID = 4;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = Math.floor(800 - skillLevel * 10);
   damagePower = Math.floor(3750 + skillLevel * 125);
   spiritMult = 3;
   knockBack = 0;
   skillDelay = 600;
   skillDuration = Math.floor(4 + skillLevel * 0.1);
}
