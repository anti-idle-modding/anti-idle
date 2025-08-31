on(release){
   if(_root.save.coin >= cost && _root.save.buttonGrandpaAccuracy < 11)
   {
      _root.save.coin -= cost;
      _root.save.buttonGrandpaAccuracy += 1;
      checkDesc();
   }
}
