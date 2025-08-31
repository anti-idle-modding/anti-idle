onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.megaCareerPotion >= 5)
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
