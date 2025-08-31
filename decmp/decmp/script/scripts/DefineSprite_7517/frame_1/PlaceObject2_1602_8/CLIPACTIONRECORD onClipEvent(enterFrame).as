onClipEvent(enterFrame){
   if(_root.save.ripoffCard[_parent.cardID] > 0 && _root.save[_parent.cardName + "Time"] < 359100)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
