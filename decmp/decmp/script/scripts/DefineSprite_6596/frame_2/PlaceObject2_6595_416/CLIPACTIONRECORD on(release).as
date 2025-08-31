on(release){
   if(_root.arcadeTimeLeft > powerCost && powerType != 18 && _root.mindPowerCooldown <= 0)
   {
      _root.mindPowerCooldown = 1;
      _root.arcadeTimeLeft -= powerCost;
      tilex = _root.focusx;
      tiley = _root.focusy;
      i = tiley + 1;
      while(i < 10)
      {
         _root["tile" + tilex + "_" + i + "A"] = true;
         i++;
      }
   }
}
