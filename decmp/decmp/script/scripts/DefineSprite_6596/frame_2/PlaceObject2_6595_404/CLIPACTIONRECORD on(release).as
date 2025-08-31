on(release){
   if(_root.arcadeTimeLeft > powerCost && powerType != 18 && _root.mindPowerCooldown <= 0)
   {
      _root.arcadeTimeLeft -= powerCost;
      _root.mindPowerCooldown = 1;
      tilex = _root.focusx;
      tiley = _root.focusy;
      _root["tile" + (tilex - 1) + "_" + (tiley - 1) + "A"] = true;
      _root["tile" + (tilex - 1) + "_" + (tiley + 0) + "A"] = true;
      _root["tile" + (tilex - 1) + "_" + (tiley + 1) + "A"] = true;
      _root["tile" + (tilex + 0) + "_" + (tiley - 1) + "A"] = true;
      _root["tile" + (tilex + 0) + "_" + (tiley + 1) + "A"] = true;
      _root["tile" + (tilex + 1) + "_" + (tiley - 1) + "A"] = true;
      _root["tile" + (tilex + 1) + "_" + (tiley + 0) + "A"] = true;
      _root["tile" + (tilex + 1) + "_" + (tiley + 1) + "A"] = true;
      _root["tile" + (tilex - 2) + "_" + (tiley + 0) + "A"] = true;
      _root["tile" + (tilex + 0) + "_" + (tiley - 2) + "A"] = true;
      _root["tile" + (tilex + 0) + "_" + (tiley + 2) + "A"] = true;
      _root["tile" + (tilex + 2) + "_" + (tiley + 0) + "A"] = true;
      _root["tile" + (tilex - 2) + "_" + (tiley - 2) + "A"] = true;
      _root["tile" + (tilex + 2) + "_" + (tiley - 2) + "A"] = true;
      _root["tile" + (tilex - 2) + "_" + (tiley + 2) + "A"] = true;
      _root["tile" + (tilex + 2) + "_" + (tiley + 2) + "A"] = true;
   }
}
