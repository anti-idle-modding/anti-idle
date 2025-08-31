on(release){
   if(_root.save.buttonPurple >= cost && _root.save.buttonGrandpa < 20)
   {
      _root.save.buttonPurple -= cost;
      _root.save.buttonGrandpa += 1;
      checkDesc();
   }
}
