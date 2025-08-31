on(dragOver,rollOver){
   if(_root.save.printerLevel < 400)
   {
      _root.actiondescription = "Upgrade Money Printer with <b>" + _root.withComma(costCoin) + "</b> Coins!\n[Required Level: " + _root.withComma(reqLevel) + "]";
   }
}
