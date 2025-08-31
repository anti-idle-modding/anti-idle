onClipEvent(load){
   function changeBonus()
   {
      curBonus = 0;
      i = 0;
      while(i <= _parent.activeArray.length - 1)
      {
         if(toChange == _parent.activeArray[i])
         {
            curBonus = i;
         }
         i++;
      }
      if(curBonus == _parent.activeArray.length - 1)
      {
         newBonus = _parent.activeArray[0];
      }
      else
      {
         newBonus = _parent.activeArray[curBonus + 1];
      }
   }
}
