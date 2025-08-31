on(keyPress "!"){
   if(_root.saveid < 10)
   {
      _parent.gotoAndStop(7);
   }
   else if(_root.saveid < 20)
   {
      _parent.gotoAndStop(22);
   }
   else
   {
      _parent.gotoAndStop(24);
   }
}
