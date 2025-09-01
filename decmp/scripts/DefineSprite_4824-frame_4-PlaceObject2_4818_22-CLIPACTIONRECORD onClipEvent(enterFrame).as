onClipEvent(enterFrame){
   targetScale = 100 - _parent.chaosAttack;
   _xscale = _xscale + (targetScale - _xscale) / 10;
}
