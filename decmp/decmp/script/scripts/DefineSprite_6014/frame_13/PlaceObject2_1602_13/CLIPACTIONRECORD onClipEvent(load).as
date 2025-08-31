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
      if(curBonus == 0)
      {
         newBonus = _parent.bonusArray[_parent.bonusArray.length - 1];
      }
      else
      {
         newBonus = _parent.bonusArray[curBonus - 1];
      }
   }
}
