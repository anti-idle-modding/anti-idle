on(release){
   if(_root.save.shinyToken >= 200)
   {
      _root.save.shinyToken -= 200;
      _root.restockModule(4);
      _parent.gotoAndStop(1);
   }
}
