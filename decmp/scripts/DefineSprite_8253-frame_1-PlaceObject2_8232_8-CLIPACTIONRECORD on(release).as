on(release){
   _root.actiondescription = "";
   if(_root.save.featureManualSprayer == true)
   {
      if(_root.sprayCooldown1 <= 0 && _root.save.ants > 0)
      {
         _root.sprayCooldown1 = 180;
         _root.save.antsSprayed += Math.ceil(_root.save.ants * 0.9);
         _root.save.ants = Math.floor(_root.save.ants * 0.1);
      }
   }
}
