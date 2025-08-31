onClipEvent(load){
   function reloadBP()
   {
      if(_root.save.battlePoint < 500 && _currentframe != 2)
      {
         gotoAndStop(2);
      }
      else if(_root.save.battlePoint >= 500 && _currentframe != 1)
      {
         gotoAndStop(1);
      }
      if(_root.save.battlePoint >= 500)
      {
         htmlText = "<font color=\'#7FFF00\'>" + _root.withComma(_root.save.battlePoint) + "</font>";
         if(_root.save.battlePoint > 999999999)
         {
            htmlText = "<font color=\'#7FFF00\'>999,999,999</font>";
         }
         if(_root.save.battlePoint < 10)
         {
            htmlText = "<font color=\'#236400\'>000,000,00</font>" + htmlText;
         }
         else if(_root.save.battlePoint < 100)
         {
            htmlText = "<font color=\'#236400\'>000,000,0</font>" + htmlText;
         }
         else if(_root.save.battlePoint < 1000)
         {
            htmlText = "<font color=\'#236400\'>000,000,</font>" + htmlText;
         }
         else if(_root.save.battlePoint < 10000)
         {
            htmlText = "<font color=\'#236400\'>000,00</font>" + htmlText;
         }
         else if(_root.save.battlePoint < 100000)
         {
            htmlText = "<font color=\'#236400\'>000,0</font>" + htmlText;
         }
         else if(_root.save.battlePoint < 1000000)
         {
            htmlText = "<font color=\'#236400\'>000,</font>" + htmlText;
         }
         else if(_root.save.battlePoint < 10000000)
         {
            htmlText = "<font color=\'#236400\'>00</font>" + htmlText;
         }
         else if(_root.save.battlePoint < 100000000)
         {
            htmlText = "<font color=\'#236400\'>0</font>" + htmlText;
         }
         bpText.htmlText = htmlText;
      }
   }
   reloadBP();
   del = 0;
}
