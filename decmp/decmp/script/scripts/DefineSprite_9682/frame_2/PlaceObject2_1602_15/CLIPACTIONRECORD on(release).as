on(release){
   if(_root.save.shinyToken >= 4)
   {
      _root.save.shinyToken -= 4;
      _root.restockModule(2);
      _parent.gotoAndStop(1);
   }
}
