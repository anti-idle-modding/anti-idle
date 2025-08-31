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
      if(curBonus == 0)
      {
         newBonus = _parent.activeArray[_parent.activeArray.length - 1];
      }
      else
      {
         newBonus = _parent.activeArray[curBonus - 1];
      }
   }
}
