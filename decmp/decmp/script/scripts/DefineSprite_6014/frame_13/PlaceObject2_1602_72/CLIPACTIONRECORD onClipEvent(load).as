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
      if(curBonus == _parent.moreBonusArray.length - 1)
      {
         newBonus = _parent.moreBonusArray[0];
      }
      else
      {
         newBonus = _parent.moreBonusArray[curBonus + 1];
      }
   }
}
