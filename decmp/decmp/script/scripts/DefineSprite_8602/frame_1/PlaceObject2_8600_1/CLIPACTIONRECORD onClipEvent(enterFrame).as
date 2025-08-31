onClipEvent(enterFrame){
   xscale = _parent.chain * 10;
   _xscale = _xscale + (xscale - _xscale) / 5;
}
