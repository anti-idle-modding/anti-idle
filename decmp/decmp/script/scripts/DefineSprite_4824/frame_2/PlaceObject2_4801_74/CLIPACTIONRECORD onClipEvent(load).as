onClipEvent(load){
   skillID = 105;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = 600 - skillLevel * 10;
   coolDown = 75 - skillLevel;
   skillDelay = 275;
}
