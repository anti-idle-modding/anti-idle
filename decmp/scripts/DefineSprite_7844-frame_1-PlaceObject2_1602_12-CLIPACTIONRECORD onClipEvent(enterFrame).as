onClipEvent(enterFrame){
   pl = Math.floor((_root.save.petStat[1] + _root.save.petStat[2] + _root.save.petStat[3] + _root.save.petStat[4] + _root.save.petStat[5] + _root.save.petStat[6] + _root.save.petStat[7] + _root.save.petStat[8]) / 8);
   petMax = 100 + Math.min(pl,100) + Math.max(Math.floor(pl * (pl - 100) / 25),0);
   if(_root.fishArray[_parent.ID].fullness > 0 && _root.save.petFullness < petMax && _root.save.petExist == 1 && _root.save.fishLeft[_parent.ID] > 0)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
   if(Key.isDown(16) && focus == true)
   {
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
}
