onClipEvent(load){
   function changeBonus()
   {
      curBonus = 0;
      i = 0;
      while(i <= _parent.bonusArray.length - 1)
      {
         if(toChange == _parent.bonusArray[i])
         {
            curBonus = i;
         }
         i++;
      }
      if(curBonus == _parent.bonusArray.length - 1)
      {
         newBonus = _parent.bonusArray[0];
      }
      else
      {
         newBonus = _parent.bonusArray[curBonus + 1];
      }
   }
}
