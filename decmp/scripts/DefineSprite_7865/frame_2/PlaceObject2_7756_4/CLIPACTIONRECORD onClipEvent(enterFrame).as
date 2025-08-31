onClipEvent(enterFrame){
   coinCost = 900000000;
   if(_root.save.fishCapacity > 2500)
   {
      coinCost = 3000000000;
   }
   if(_root.save.fishCapacity > 5000)
   {
      coinCost = 9000000000;
   }
   if(_root.save.fishCapacity > 7500)
   {
      coinCost = 30000000000;
   }
   if(_root.save.fishCapacity > 10000)
   {
      coinCost = 90000000000;
   }
   if(_root.save.fishCapacity > 12500)
   {
      coinCost = 300000000000;
   }
   if(_root.save.fishCapacity > 15000)
   {
      coinCost = 900000000000;
   }
   if(_root.save.fishCapacity >= 100000)
   {
      coinCost = Infinity;
   }
   if(isNaN(coinCost))
   {
      coinCost = Infinity;
   }
   if(_root.save.coin >= coinCost)
   {
      _alpha = 100;
   }
   else if(_root.save.fishCapacity < 100000)
   {
      _alpha = 20;
   }
   else
   {
      _alpha = 0;
   }
}
