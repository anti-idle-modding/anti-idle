on(release){
   if(_root.save.awesomeRefill > 0 && _root.save.awesomeEnergy < _root.save.awesomeMaxEnergy * 4 && _root.save.refillNext < 600)
   {
      if(_root.save.gDifficulty == 3 && _root.save.level < 8999)
      {
         _root.save.refillAsc += 1;
         if(_root.save.refillAsc >= 1000)
         {
            _root.save.refillNext += 30;
         }
      }
      _root.save.awesomeRefill -= 1;
      _root.save.awesomeEnergy += _root.save.awesomeMaxEnergy;
   }
}
