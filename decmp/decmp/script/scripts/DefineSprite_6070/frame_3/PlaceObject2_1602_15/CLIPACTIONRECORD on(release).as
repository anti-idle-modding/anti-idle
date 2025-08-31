on(release){
   if(_root.save.coin >= cost && _root.save.buttonGrandpaSpeed < 11)
   {
      _root.save.coin -= cost;
      _root.save.buttonGrandpaSpeed += 1;
      checkDesc();
   }
}
