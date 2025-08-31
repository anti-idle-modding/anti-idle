on(release){
   if(_root.save.greenCoin >= 1000000 && _root.save.arcadeToken < 95)
   {
      _root.save.greenCoin -= 1000000;
      _root.save.arcadeToken += 5;
      _root.save.arcadeBuyCount += 1;
      _parent.checkGlobal();
   }
}
