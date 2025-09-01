onClipEvent(enterFrame){
   targetBoost = Math.floor(_root.boostMax * 2.5);
   _parent.r3.text = targetBoost + "%";
   _parent.p3.text = "x" + _root.withComma(_root.save.megaBoostPotion);
   if(_root.save.boost < targetBoost - 1 && _root.save.megaBoostPotion >= 1)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
