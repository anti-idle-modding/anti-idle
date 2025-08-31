onClipEvent(enterFrame){
   if(_root.save.awesomeAuto[_parent._currentframe] == 0)
   {
      _alpha = 0;
   }
   else
   {
      _alpha = 100;
      _Y = 137.5 + _root.save.awesomeAuto[_parent._currentframe] * 25;
   }
   if(_root.house.holding[0] == 1 || _root.house.holding[0] >= 20 && _root.house.holding[0] <= 144000)
   {
      _parent.choice0();
   }
}
