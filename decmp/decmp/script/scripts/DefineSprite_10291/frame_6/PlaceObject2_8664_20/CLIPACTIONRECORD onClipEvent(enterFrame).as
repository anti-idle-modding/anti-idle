onClipEvent(enterFrame){
   fr = _root.achViewType;
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
}
