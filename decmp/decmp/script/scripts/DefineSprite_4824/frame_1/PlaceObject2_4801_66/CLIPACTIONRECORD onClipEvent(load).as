onClipEvent(load){
   skillID = 101;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = 1000;
   pixelCost = 1;
   coolDown = 15;
   damagePower = Math.floor(1000 + skillLevel * 100);
   knockBack = 4;
   skillDelay = 400;
   skillDuration = Math.floor(4 + skillLevel / 5);
}
