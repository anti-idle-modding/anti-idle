on(release){
   if(_root.arcadeTimeLeft > powerCost && powerType != 18 && _root.mindPowerCooldown <= 0)
   {
      _root.mindPowerCooldown = 1;
      _root.arcadeTimeLeft -= powerCost;
      i = 1;
      while(i <= 15)
      {
         tilex = random(20);
         tiley = random(10);
         _root["tile" + tilex + "_" + tiley + "A"] = true;
         i++;
      }
   }
}
