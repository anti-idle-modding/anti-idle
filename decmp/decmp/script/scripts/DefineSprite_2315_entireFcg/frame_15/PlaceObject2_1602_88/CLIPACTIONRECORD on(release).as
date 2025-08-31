on(release){
   _parent.checkPrice();
   if(_root.save.fcgCash >= _parent.buff2Cost)
   {
      _root.save.fcgCash -= _parent.buff2Cost;
      _root.save.fcgBuff[2] += 1;
   }
   _parent.checkPrice();
}
