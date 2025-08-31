on(release){
   if(_root.save.careerPotion > 0)
   {
      _root.save.careerPotion -= 1;
      targetCareer = random(12) + 1;
      _root.save.careerBoost[targetCareer] += 1800;
      if(_root.save.careerBoost[targetCareer] > 360000)
      {
         _root.save.careerBoost[targetCareer] = 360000;
      }
      _root.gainCareerEXP(targetCareer,1000 + _root.save.careerLevel[targetCareer] * 5,false);
   }
}
