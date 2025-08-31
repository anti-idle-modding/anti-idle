onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.arcade100kMedal >= 250 && _root.save.boostPotion < 9999)
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
