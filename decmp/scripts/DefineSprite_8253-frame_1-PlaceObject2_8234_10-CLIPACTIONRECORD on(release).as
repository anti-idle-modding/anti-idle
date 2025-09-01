on(release){
   _root.actiondescription = "";
   if(_root.save.featureDoomSprayer == true)
   {
      if(_root.sprayCooldown2 <= 0 && _root.save.ants > 0)
      {
         _root.sprayCooldown2 = 600;
         _root.save.antsSprayed += _root.save.ants + 99;
         _root.save.ants = -99;
      }
   }
}
