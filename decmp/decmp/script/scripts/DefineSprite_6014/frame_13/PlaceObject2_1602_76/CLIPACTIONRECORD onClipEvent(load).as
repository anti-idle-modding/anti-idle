onClipEvent(load){
   function changeBonus()
   {
      curBonus = 0;
      i = 0;
      while(i <= _parent.moreBonusArray.length - 1)
      {
         if(toChange == _parent.moreBonusArray[i])
         {
            curBonus = i;
         }
         i++;
      }
      if(curBonus == 0)
      {
         newBonus = _parent.moreBonusArray[_parent.moreBonusArray.length - 1];
      }
      else
      {
         newBonus = _parent.moreBonusArray[curBonus - 1];
      }
   }
}
