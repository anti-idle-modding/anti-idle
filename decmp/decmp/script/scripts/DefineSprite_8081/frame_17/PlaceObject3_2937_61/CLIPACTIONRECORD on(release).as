on(release){
   if(_root.save.mysteryBox[boxID] > 0 && !isNaN(_root.save.mysteryBox[boxID]) && _parent.popScreen._currentframe == 1 && _root.optionsScreen._currentframe == 1 && _root.save.bestLevel >= 500)
   {
      _root.save.mysteryBox[boxID] -= 1;
      openBox();
   }
   else if(_root.save.bestLevel < 500)
   {
      _root.showPopup("Level 500 Required","You have to reach level 500 to open Supply Crates.");
   }
}
