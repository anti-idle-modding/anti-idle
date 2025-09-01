onClipEvent(enterFrame){
   if(_root.save.petMana >= _parent.petMaxB)
   {
      _alpha = 40;
   }
   else
   {
      _alpha = 0;
   }
}
