onClipEvent(enterFrame){
   if(_root.saveGlobal.breakAll[_root.newsID[_parent.ID]] == true)
   {
      gotoAndStop(3);
   }
   else if(_root.saveGlobal.breakFeature[_root.newsID[_parent.ID]] == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}
