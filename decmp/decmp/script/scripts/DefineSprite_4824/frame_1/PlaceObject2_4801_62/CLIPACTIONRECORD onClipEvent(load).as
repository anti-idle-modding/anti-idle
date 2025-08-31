onClipEvent(load){
   skillID = 4;
   skillLevel = _root.save.arenaSkill[skillID];
   comboReq = Math.floor(500 - skillLevel * 10);
   damagePower = Math.floor(1600 + skillLevel * 30);
   rage = 10;
   knockBack = 0;
   skillDelay = 350;
}
