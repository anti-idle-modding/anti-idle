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
      if(curBonus == _parent.abilityArray.length - 1)
      {
         newBonus = _parent.abilityArray[0];
      }
      else
      {
         newBonus = _parent.abilityArray[curBonus + 1];
      }
   }
}
