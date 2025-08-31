onClipEvent(enterFrame){
   targetScale = 100 - _parent.chaosSpecial;
   _xscale = _xscale + (targetScale - _xscale) / 10;
}
