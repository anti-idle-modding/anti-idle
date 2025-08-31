onClipEvent(enterFrame){
   if(_root.save.arenaChaosLeft < _root.save.arenaChaosMax && _root.save.arenaCraft >= shardPrice)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
