onClipEvent(load){
   skillID = 102;
   skillLevel = _root.save.arenaSkill[skillID];
   coolDown = 60 - skillLevel;
   damagePower = Math.floor(4000 + skillLevel * 200);
   skillDelay = 275;
}
