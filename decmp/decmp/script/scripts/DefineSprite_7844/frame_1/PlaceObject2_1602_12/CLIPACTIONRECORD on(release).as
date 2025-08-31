on(release){
   doThis();
   if(_root.fishArray[_parent.ID].fullness > 0)
   {
      _root.actiondescription = "Pet Fullness: <b>+" + _root.fishArray[_parent.ID].fullness + "</b>";
   }
   if(_alpha == 100)
   {
      if(_parent.ID >= 11)
      {
         _root.actiondescription += "\n\n<font color=\'#FF9900\'>Your pet can eat up to <b>" + _root.save.fishPetFishCooldown + "</b> more fish today.</font>";
      }
      else
      {
         _root.actiondescription += "\n\n<font color=\'#FF9900\'>Your pet can eat up to <b>" + _root.save.fishPetFoodCooldown + "</b> more Pet Food for full effect today.</font>";
      }
   }
}
