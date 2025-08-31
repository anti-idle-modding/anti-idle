on(release){
   if(_root.save.shinyToken >= 3000 && _root.save.megaCareerPotion >= 1500 && _root.save.gardenMegaFertilizer >= 600)
   {
      _root.save.shinyToken -= 3000;
      _root.save.megaCareerPotion -= 1500;
      _root.save.gardenMegaFertilizer -= 600;
      _root.save.botPill += 1;
      _root.save.botPillCrafted += 1;
   }
}
