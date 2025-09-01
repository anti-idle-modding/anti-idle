onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.blueCoin >= _parent.costB)
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
