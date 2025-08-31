on(release){
   if(_root.arcadeTimeLeft > powerCost && powerType != 18 && _root.mindPowerCooldown <= 0)
   {
      _root.mindPowerCooldown = 1;
      _root.arcadeTimeLeft -= powerCost;
      tilex = _root.focusx;
      tiley = _root.focusy;
      i = tilex + 1;
      while(i < 20)
      {
         _root["tile" + i + "_" + tiley + "A"] = true;
         i++;
      }
   }
}
