onClipEvent(load){
   skillID = 103;
   skillLevel = _root.save.arenaSkill[skillID];
   coolDown = 150 - skillLevel * 2;
   damagePower = 20000 + skillLevel * 1000;
   skillDelay = 275;
}
