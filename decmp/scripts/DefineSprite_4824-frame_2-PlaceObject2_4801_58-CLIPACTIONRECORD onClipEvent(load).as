onClipEvent(load){
   skillID = 3;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = Math.floor(340 - skillLevel * 4);
   damagePower = Math.floor(1500 + skillLevel * 50);
   spiritMult = 2;
   knockBack = 0;
   skillDelay = 600;
   skillEffect = 0.08 + skillLevel * 0.004;
   if(_root.save.arenaSkill[8] >= 1)
   {
      mpCost -= 20;
   }
   effectDisp = skillEffect * 100;
}
