onClipEvent(load){
   curRot = 75;
   rotDirection = 15;
   realRot = 0;
   damageToTake = 2000000 + _root.save.arenaSkillMax[59] * 200000;
   if(_root.save.arenaSkillMax[59] >= 50)
   {
      damageToTake *= 3;
   }
   del = 0;
}
