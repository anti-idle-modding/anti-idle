onClipEvent(enterFrame){
   pct = _root.save.expGraph2[7] / _parent.maxGraph * 100;
   targetY = 200 - pct * 2;
   _Y = _Y + (targetY - _Y) / 5;
}
