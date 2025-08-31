on(release){
   if(_root.save.megaCareerPotion >= 5)
   {
      _root.save.megaCareerPotion -= 5;
      targetCareer = 11;
      _root.save.careerBoost[targetCareer] += 86400;
      if(_root.save.careerBoost[targetCareer] > 360000)
      {
         _root.save.careerBoost[targetCareer] = 360000;
      }
      _root.gainCareerEXP(targetCareer,50000 + _root.save.careerLevel[targetCareer] * 250,false);
   }
}
