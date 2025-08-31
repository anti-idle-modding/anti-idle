on(release){
   _parent.checkPrice();
   if(_root.save.fcgCash >= _parent.buff1Cost)
   {
      _root.save.fcgCash -= _parent.buff1Cost;
      _root.save.fcgBuff[1] += 1;
   }
   _parent.checkPrice();
}
