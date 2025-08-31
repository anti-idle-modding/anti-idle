onClipEvent(enterFrame){
   if(_root.save.arenaCraft >= _parent.cost1 && _root.save.arenaPyramidEntry < 990)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
