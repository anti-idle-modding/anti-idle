onClipEvent(enterFrame){
   if(_parent.elapsed > 3 || _parent.flipLeft == 0)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
