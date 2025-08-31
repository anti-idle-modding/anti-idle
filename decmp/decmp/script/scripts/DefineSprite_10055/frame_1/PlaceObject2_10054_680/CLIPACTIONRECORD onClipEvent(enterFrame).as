onClipEvent(enterFrame){
   if(_parent.questScroll < _parent.maxScroll)
   {
      targetAlpha = 100;
   }
   else
   {
      targetAlpha = 0;
   }
   _alpha = _alpha + Math.round((targetAlpha - _alpha) / 2);
}
