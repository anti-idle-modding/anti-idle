onClipEvent(enterFrame){
   targetScale = 100 - _parent.chaosHealth;
   _xscale = _xscale + (targetScale - _xscale) / 10;
}
