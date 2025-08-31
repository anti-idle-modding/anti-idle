onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.stadiumToken >= 50000)
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
