onClipEvent(load){
   function changeBonus()
   {
      curBonus = 0;
      i = 0;
      while(i <= _parent.abilityArray.length - 1)
      {
         if(toChange == _parent.abilityArray[i])
         {
            curBonus = i;
         }
         i++;
      }
      if(curBonus == 0)
      {
         newBonus = _parent.abilityArray[_parent.abilityArray.length - 1];
      }
      else
      {
         newBonus = _parent.abilityArray[curBonus - 1];
      }
   }
}
