onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.stadiumToken >= 100000 && _root.save.deathMatchEntry < 1)
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
