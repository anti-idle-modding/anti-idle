onClipEvent(enterFrame){
   costCoin = (_root.save.printerLevel + 1) * (_root.save.printerLevel + 1) * 10000;
   reqLevel = 20 + _root.save.printerLevel * 20;
   if(_root.saveid == 24 && _root.save.printerLevel >= 13)
   {
      reqLevel = 99999;
   }
   if(reqLevel < 60)
   {
      reqLevel = 60;
   }
   if(_root.save.printerLevel >= 400)
   {
      _alpha = 30;
   }
   else if(_root.save.coin < costCoin || _root.save.bestLevel < reqLevel)
   {
      _alpha = 30;
   }
   else
   {
      _alpha = 100;
   }
}
