on(release){
   _parent.checkPrice();
   if(_root.save.fcgCash >= _parent.buff3Cost)
   {
      _root.save.fcgCash -= _parent.buff3Cost;
      _root.save.fcgBuff[3] += 1;
   }
   _parent.checkPrice();
}
