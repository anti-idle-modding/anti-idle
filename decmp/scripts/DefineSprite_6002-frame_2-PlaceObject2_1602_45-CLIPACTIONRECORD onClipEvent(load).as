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
      if(curBonus == _parent.passiveArray.length - 1)
      {
         newBonus = _parent.passiveArray[0];
      }
      else
      {
         newBonus = _parent.passiveArray[curBonus + 1];
      }
   }
}
