onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.buttonPurple >= 200 && _root.save.buttonMultiplier < 1200)
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
