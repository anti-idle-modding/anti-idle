onClipEvent(enterFrame){
   if(_root.save.fishLeft[_parent.ID + 3] > 0 && _root.save.fishLeft[_parent.ID] > 0 && _parent.ID <= 3)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
   if(Key.isDown(16) && focus == true)
   {
      doThis();
   }
}
