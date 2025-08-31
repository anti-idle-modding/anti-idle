on(release){
   _parent.checkPrice();
   if(_root.save.fcgCash >= _parent.buff4Cost)
   {
      _root.save.fcgCash -= _parent.buff4Cost;
      _root.save.fcgBuff[4] += 1;
   }
   _parent.checkPrice();
}
