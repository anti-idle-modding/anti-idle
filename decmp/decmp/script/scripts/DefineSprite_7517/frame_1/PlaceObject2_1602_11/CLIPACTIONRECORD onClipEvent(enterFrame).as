onClipEvent(enterFrame){
   if(Key.isDown(16) && _root.save.ripoffCard[_parent.cardID] >= _parent.cardTradeRatio)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
