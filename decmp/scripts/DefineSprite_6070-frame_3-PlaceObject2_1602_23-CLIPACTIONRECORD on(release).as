on(release){
   if(_root.save.greenCoin >= cost && _root.save.buttonGrandpaDiscipline < 11)
   {
      _root.save.greenCoin -= cost;
      _root.save.buttonGrandpaDiscipline += 1;
      checkDesc();
   }
}
