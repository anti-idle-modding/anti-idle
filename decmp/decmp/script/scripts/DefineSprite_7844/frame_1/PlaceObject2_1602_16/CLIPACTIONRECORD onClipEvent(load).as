onClipEvent(load){
   function doThis()
   {
      if(_root.fishArray[_parent.ID].fatigue > 0 && _root.save.fishFatigue >= 1 && _root.save.fishLeft[_parent.ID] > 0)
      {
         eatable = false;
         penalty = false;
         if(_parent.ID >= 11 && _root.save.fishFoodCooldown > 0)
         {
            eatable = true;
            _root.save.fishFoodCooldown -= 1;
         }
         else if(_parent.ID <= 10)
         {
            if(_root.save.fishDrinkCooldown > 0)
            {
               eatable = true;
               _root.save.fishDrinkCooldown -= 1;
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
               _root.save.fishFatigue -= _root.fishArray[_parent.ID].fatigue;
            }
            else
            {
               _root.save.fishFatigue -= Math.floor(_root.fishArray[_parent.ID].fatigue * 0.2);
            }
            if(_root.save.fishFatigue < 0)
            {
               _root.save.fishFatigue = 0;
            }
            _parent.checkStat();
         }
      }
   }
   _alpha = 30;
   focus = false;
}
