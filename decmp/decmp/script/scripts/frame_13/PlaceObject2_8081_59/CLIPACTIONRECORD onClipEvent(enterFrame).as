onClipEvent(enterFrame){
   if(_root.cursoridle > 600)
   {
      targetX = 1710;
   }
   else
   {
      targetX = 10;
   }
   _X = _X + (targetX - _X) / 5;
}
