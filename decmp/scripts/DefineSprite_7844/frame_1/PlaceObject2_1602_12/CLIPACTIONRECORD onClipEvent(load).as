onClipEvent(load){
   function doThis()
   {
      pl = Math.floor((_root.save.petStat[1] + _root.save.petStat[2] + _root.save.petStat[3] + _root.save.petStat[4] + _root.save.petStat[5] + _root.save.petStat[6] + _root.save.petStat[7] + _root.save.petStat[8]) / 8);
      petMax = 100 + Math.min(pl,100) + Math.max(Math.floor(pl * (pl - 100) / 25),0);
      if(_root.fishArray[_parent.ID].fullness > 0 && _root.save.petFullness < petMax && _root.save.petExist == 1 && _root.save.fishLeft[_parent.ID] > 0)
      {
         eatable = false;
         penalty = false;
         if(_parent.ID >= 11 && _root.save.fishPetFishCooldown > 0)
         {
            eatable = true;
            _root.save.fishPetFishCooldown -= 1;
         }
         else if(_parent.ID <= 10)
         {
            if(_root.save.fishPetFoodCooldown > 0)
            {
               eatable = true;
               _root.save.fishPetFoodCooldown -= 1;
            }
            else
            {
               eatable = true;
               penalty = true;
            }
         }
         if(eatable == true)
         {
            _root.save.fishLeft[_parent.ID] -= 1;
            if(penalty != true)
            {
               _root.save.petFullness += _root.fishArray[_parent.ID].fullness;
            }
            else
            {
               _root.save.petFullness += Math.floor(_root.fishArray[_parent.ID].fullness * 0.2);
            }
            _parent.checkStat();
         }
      }
   }
   _alpha = 30;
   focus = false;
}
