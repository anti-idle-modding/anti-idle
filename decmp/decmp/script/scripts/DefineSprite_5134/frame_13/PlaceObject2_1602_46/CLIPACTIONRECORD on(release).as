on(release){
   if(_root.save.arenaChaosLeft < _root.save.arenaChaosMax && _root.save.arenaCraft >= shardPrice)
   {
      _root.save.arenaCraft -= shardPrice;
      _root.save.arenaChaosLeft += 1;
   }
}
