onClipEvent(enterFrame){
   if(Key.isDown(16) && this.hitTest(_root.cursor._x,_root.cursor._y,true) && _parent.popScreen._currentframe == 1 && _root.optionsScreen._currentframe == 1 && _root.save.bestLevel >= 500)
   {
      if(_root.save.mysteryBox[boxID] > 0 && !isNaN(_root.save.mysteryBox[boxID]))
      {
         _root.save.mysteryBox[boxID] -= 1;
         openBox();
      }
   }
   else if(Key.isDown(16) && this.hitTest(_root.cursor._x,_root.cursor._y,true) && _parent.popScreen._currentframe == 1 && _root.optionsScreen._currentframe == 1 && _root.save.bestLevel < 500)
   {
      _root.showPopup("Level 500 Required","You have to reach level 500 to open Supply Crates.");
   }
}
