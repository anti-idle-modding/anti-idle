onClipEvent(enterFrame){
   targetBoost = Math.floor(_root.boostMax * 1.5);
   _parent.r2.text = targetBoost + "%";
   _parent.p2.text = "x" + _root.withComma(_root.save.boostPotion);
   if(_root.save.boost < targetBoost - 1 && _root.save.boostPotion >= 1)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
