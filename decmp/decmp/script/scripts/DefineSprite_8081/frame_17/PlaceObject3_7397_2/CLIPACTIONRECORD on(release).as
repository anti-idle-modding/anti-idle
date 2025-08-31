on(release){
   if(_root.save.mysteryBox[boxID] > 0 && !isNaN(_root.save.mysteryBox[boxID]) && _parent.popScreen._currentframe == 1 && _root.optionsScreen._currentframe == 1)
   {
      _root.save.mysteryBox[boxID] -= 1;
      openBox();
   }
}
