onClipEvent(enterFrame){
   if(_root.save.arenaChaosMax >= 15 && _root.save.arenaChaosMax < 21 && _root.save.arenaPixel >= costArr[_root.save.arenaChaosMax])
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
