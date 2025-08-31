onClipEvent(load){
   skillID = 104;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = 500 - skillLevel * 10;
   coolDown = 75 - skillLevel;
   skillDelay = 275;
}
