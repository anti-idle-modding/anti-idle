onClipEvent(load){
   skillID = 5;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = Math.floor(20 - skillLevel * 1);
   healPower = Math.floor(20 + skillLevel * 8);
   damagePower = Math.floor(1500 + skillLevel * 50);
   skillDelay = Math.floor(350 - skillLevel * 5);
   effectReduce = Math.floor(3 + skillLevel / 10);
   skillDuration = Math.floor(6 + skillLevel / 10);
   defenseIncrease = Math.floor(100 + skillLevel * 10);
}
