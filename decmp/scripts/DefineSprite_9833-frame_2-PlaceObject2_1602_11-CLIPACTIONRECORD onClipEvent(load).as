onClipEvent(load){
   function checkAlpha()
   {
      if(_parent.quantity > 0 && !isNaN(_parent.quantity) && !isNaN(_parent.totalCost))
      {
         _alpha = 100;
      }
      else
      {
         _alpha = 30;
      }
   }
   checkAlpha();
}
