onClipEvent(enterFrame){
   if(_parent.auView < _root.autoUpdateTime.length - 1)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
