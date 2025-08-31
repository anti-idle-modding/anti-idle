onClipEvent(enterFrame){
   pct = _root.save.expGraph[3] / _parent.maxGraph * 100;
   _Y = 200 - pct * 2;
}
