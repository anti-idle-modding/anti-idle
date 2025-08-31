onClipEvent(enterFrame){
   if(_root.save.lolGems[_parent.gemLevel] > 0)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
