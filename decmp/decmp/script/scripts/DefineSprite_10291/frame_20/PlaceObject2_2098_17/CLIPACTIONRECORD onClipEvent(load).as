onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.greenCoin >= _parent.costA)
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
