onClipEvent(enterFrame){
   del += 1;
   if(_root.house.holding[1] == 1 && del >= 2 || _root.house.holding[1] >= 30)
   {
      _root.house.holding[1] += 1;
      _root.save.awesomeAuto[_parent._currentframe] = 1;
      _parent._parent.gotoAndStop(2);
   }
}
