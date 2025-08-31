on(release){
   if(_root.save.botEnergy >= 86400 && _root.save.botLevel >= 50)
   {
      _root.save.botEnergy -= 86400;
      _root.gainCyborgEXP(250);
   }
}
