onClipEvent(load){
   function changeBonus()
   {
      curBonus = 0;
      i = 0;
      while(i <= _parent.weaponAbilityArray.length - 1)
      {
         if(toChange == _parent.weaponAbilityArray[i])
         {
            curBonus = i;
         }
         i++;
      }
      if(curBonus == _parent.weaponAbilityArray.length - 1)
      {
         newBonus = _parent.weaponAbilityArray[0];
      }
      else
      {
         newBonus = _parent.weaponAbilityArray[curBonus + 1];
      }
   }
}
