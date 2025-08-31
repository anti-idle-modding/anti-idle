stop();
onEnterFrame = function()
{
   nameText.text = sauceName;
   if(_parent.sauceMode == "EXP")
   {
      sauceValue = _root.save.expSauce[sauceID];
      totalValue = _root.save.expSauce[40];
      fr = 1;
      sText = "EXP";
   }
   else if(_parent.sauceMode == "Coins")
   {
      sauceValue = _root.save.coinSauce[sauceID];
      totalValue = _root.save.coinSauce[40];
      fr = 1;
      sText = "Coins";
   }
   else if(_parent.sauceMode == "Ascension EXP")
   {
      sauceValue = _root.save.expSauceAsc[sauceID];
      totalValue = _root.save.expSauceAsc[40];
      fr = 2;
      sText = "EXP";
   }
   else
   {
      sauceValue = 0;
      totalValue = 0;
      fr = 1;
      sText = "";
   }
   gotoAndStop(fr);
   valueText.text = _root.withComma(sauceValue) + " " + sText;
   multDisp = Math.floor(_root.sauceMult(sauceID) * 100) / 100;
   if(multDisp == Math.floor(multDisp))
   {
      multDisp += ".00x";
   }
   else if(multDisp * 10 == Math.floor(multDisp * 10))
   {
      multDisp += "0x";
   }
   else
   {
      multDisp += "x";
   }
   multText.text = multDisp;
   tempPct = Math.floor(sauceValue / totalValue * 1000) / 10;
   if(isNaN(tempPct) || tempPct < 0)
   {
      tempPct = 0;
   }
   if(tempPct > 100)
   {
      tempPct = 100;
   }
   barInside._xscale = 100 - tempPct;
   if(tempPct == Math.floor(tempPct))
   {
      tempPct += ".0";
   }
   pctText.text = tempPct + "%";
};
