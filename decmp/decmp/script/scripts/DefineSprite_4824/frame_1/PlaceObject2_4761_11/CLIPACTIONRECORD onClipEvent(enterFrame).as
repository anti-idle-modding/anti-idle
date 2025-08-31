onClipEvent(enterFrame){
   if(_root.save.bannedB > 0)
   {
      gotoAndStop(1);
      rebirthText.text = "+" + _root.save.bannedB;
   }
}
