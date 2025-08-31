onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.arcade100kMedal >= 500)
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
