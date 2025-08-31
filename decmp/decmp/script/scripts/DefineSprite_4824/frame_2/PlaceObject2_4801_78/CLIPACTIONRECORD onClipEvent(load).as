onClipEvent(load){
   skillID = 106;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = 700 - skillLevel * 10;
   coolDown = 180 - skillLevel * 2;
   skillDelay = 275;
}
