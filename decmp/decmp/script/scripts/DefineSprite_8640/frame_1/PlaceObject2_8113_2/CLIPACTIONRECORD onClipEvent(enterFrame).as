onClipEvent(enterFrame){
   fakexscale = _parent.achPercent;
   _xscale = _xscale + (fakexscale - _xscale) / 2;
}
