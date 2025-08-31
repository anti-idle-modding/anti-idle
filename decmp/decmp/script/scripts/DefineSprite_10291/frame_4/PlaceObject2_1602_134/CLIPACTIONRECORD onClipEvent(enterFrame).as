onClipEvent(enterFrame){
   targetBoost = _root.boostMax;
   _parent.r1.text = targetBoost + "%";
   if(_root.save.boost < targetBoost - 1)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
