on(release){
   _parent.checkPrice();
   if(_root.save.fcgCash >= _parent.buff6Cost)
   {
      _root.save.fcgCash -= _parent.buff6Cost;
      _root.save.fcgBuff[6] += 1;
   }
   _parent.checkPrice();
}
