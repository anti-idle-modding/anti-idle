onClipEvent(load){
   manaShield = false;
   pressSpace = false;
   holdSpace = false;
   del = 0;
   if(_root.save.arenaSkill[49] >= 1 && _root.save.arenaManaPower == true)
   {
      _root.manaPower = true;
   }
}
