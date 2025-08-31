on(release){
   if(_root.save.shinyToken >= 30)
   {
      _root.save.shinyToken -= 30;
      _root.restockModule(3);
      _parent.gotoAndStop(1);
   }
}
