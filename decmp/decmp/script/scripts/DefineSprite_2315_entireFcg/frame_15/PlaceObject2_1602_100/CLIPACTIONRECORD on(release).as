on(release){
   _parent.checkPrice();
   if(_root.save.fcgCash >= _parent.buff5Cost)
   {
      _root.save.fcgCash -= _parent.buff5Cost;
      _root.save.fcgBuff[5] += 1;
   }
   _parent.checkPrice();
}
