onClipEvent(enterFrame){
   tim = _root.save.coinOvercap;
   if(tim >= 300)
   {
      gotoAndStop(2);
   }
   else if(tim > 0)
   {
      gotoAndStop(1);
      timText.text = _root.convertSecCD(300 - tim);
   }
   else
   {
      gotoAndStop(3);
   }
}
