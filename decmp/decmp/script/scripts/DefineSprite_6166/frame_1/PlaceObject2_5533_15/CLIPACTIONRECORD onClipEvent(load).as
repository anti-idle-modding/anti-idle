onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.arcade100kMedal >= 1000 && _root.save.arcadeToken < 99)
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
