onClipEvent(enterFrame){
   if(_root.save.featureBoostGen == true)
   {
      if(_root.save.boost < _root.boostMax - 50)
      {
         gotoAndStop(2);
      }
      else
      {
         gotoAndStop(1);
      }
   }
   else
   {
      gotoAndStop(1);
   }
}
