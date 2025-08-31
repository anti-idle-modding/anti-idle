onClipEvent(enterFrame){
   targetScale = _root.save.fishFatigue / 5000 * 100;
   _xscale = _xscale + (targetScale - _xscale) / 5;
}
