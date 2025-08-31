onClipEvent(enterFrame){
   if(_root.save.greenCoin >= _root.save.lolPrice[_parent.gemLevel] && _root.save.lolGems[_parent.gemLevel] < _root.save.lolCapacity)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
