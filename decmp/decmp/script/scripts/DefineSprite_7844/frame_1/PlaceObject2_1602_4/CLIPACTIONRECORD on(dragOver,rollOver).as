on(dragOver,rollOver){
   focus = true;
   if(_alpha == 100)
   {
      _root.actiondescription = "Coin: <b>+" + _root.withComma(_root.fishArray[_parent.ID].coin * Math.pow(_root.save.bestLevel,0.6) * mult) + "</b>";
   }
}
