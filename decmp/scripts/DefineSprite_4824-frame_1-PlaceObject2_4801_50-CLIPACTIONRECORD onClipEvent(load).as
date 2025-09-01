onClipEvent(load){
   skillID = 5;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = Math.floor(200 + skillLevel * 10);
   healPower = Math.floor(10 + skillLevel * 4);
   damagePower = Math.floor(750 + skillLevel * 25);
   skillDelay = Math.floor(350 - skillLevel * 5);
   effectReduce = Math.floor(1 + skillLevel / 10);
   skillDuration = Math.floor(3 + skillLevel / 10);
   defenseIncrease = Math.floor(100 + skillLevel * 10);
}
