onClipEvent(load){
   function checkCost()
   {
      _parent.checkAsc();
      if(_root.save.remStupidity < _parent.cost)
      {
         _alpha = 30;
      }
      else
      {
         _alpha = 100;
      }
   }
   checkCost();
}
