on(release){
   _parent.checkPrice();
   if(_root.save.fcgCash >= _parent.buff8Cost)
   {
      _root.save.fcgCash -= _parent.buff8Cost;
      _root.save.fcgBuff[8] += 1;
   }
   _parent.checkPrice();
}
