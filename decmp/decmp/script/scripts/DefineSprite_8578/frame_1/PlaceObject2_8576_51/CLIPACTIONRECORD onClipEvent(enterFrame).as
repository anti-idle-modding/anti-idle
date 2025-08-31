onClipEvent(enterFrame){
   pct = _root.save.expGraph2[0] / _parent.maxGraph * 100;
   _Y = 200 - pct * 2;
}
