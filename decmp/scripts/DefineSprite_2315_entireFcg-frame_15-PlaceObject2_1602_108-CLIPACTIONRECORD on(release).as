on(release){
   _parent.checkPrice();
   if(_root.save.fcgCash >= _parent.buff7Cost)
   {
      _root.save.fcgCash -= _parent.buff7Cost;
      _root.save.fcgBuff[7] += 1;
   }
   _parent.checkPrice();
}
