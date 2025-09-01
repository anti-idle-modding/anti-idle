onClipEvent(enterFrame){
   if(_root.save.arenaCraft >= _parent.cost2 && _root.save.arenaMegabossEntry < 990)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
