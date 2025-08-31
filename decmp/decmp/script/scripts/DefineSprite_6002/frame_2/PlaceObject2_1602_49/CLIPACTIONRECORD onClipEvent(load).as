onClipEvent(load){
   function changeBonus()
   {
      curBonus = 0;
      i = 0;
      while(i <= _parent.passiveArray.length - 1)
      {
         if(toChange == _parent.passiveArray[i])
         {
            curBonus = i;
         }
         i++;
      }
      if(curBonus == 0)
      {
         newBonus = _parent.passiveArray[_parent.passiveArray.length - 1];
      }
      else
      {
         newBonus = _parent.passiveArray[curBonus - 1];
      }
   }
}
