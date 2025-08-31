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
      if(curBonus == 0)
      {
         newBonus = _parent.weaponAbilityArray[_parent.weaponAbilityArray.length - 1];
      }
      else
      {
         newBonus = _parent.weaponAbilityArray[curBonus - 1];
      }
   }
}
