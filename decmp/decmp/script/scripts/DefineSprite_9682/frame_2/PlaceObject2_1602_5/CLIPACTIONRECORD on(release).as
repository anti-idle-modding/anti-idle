on(release){
   if(_root.save.whiteCoin >= 25)
   {
      _root.save.whiteCoin -= 25;
      _root.restockModule(1);
      _parent.gotoAndStop(1);
   }
}
