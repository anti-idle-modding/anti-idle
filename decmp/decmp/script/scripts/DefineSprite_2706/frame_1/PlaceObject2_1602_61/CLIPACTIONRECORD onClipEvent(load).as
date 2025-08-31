onClipEvent(load){
   if(_root.save.level >= 3000)
   {
      _alpha = 100;
   }
   else if(_root.save.gDifficulty < 3 && _root.save.level >= 1000)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
