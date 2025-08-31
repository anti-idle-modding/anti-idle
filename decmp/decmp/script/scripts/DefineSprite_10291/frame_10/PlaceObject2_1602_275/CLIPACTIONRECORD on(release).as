on(release){
   if(_root.save.careerPotion >= 20 && _root.save.megaCareerPotion < 9999)
   {
      _root.save.careerPotion -= 20;
      _root.save.megaCareerPotion += 1;
   }
}
