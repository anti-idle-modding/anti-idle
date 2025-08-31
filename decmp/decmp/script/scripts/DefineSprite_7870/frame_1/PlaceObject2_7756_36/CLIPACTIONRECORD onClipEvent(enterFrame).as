onClipEvent(enterFrame){
   if(_root.save.fishLevel < 30)
   {
      coinCost = costArray[_root.save.fishLevel];
      if(isNaN(coinCost))
      {
         coinCost = Infinity;
      }
      if(_parent.ready == true && _root.save.coin >= coinCost)
      {
         _alpha = 100;
         _Y = 15;
      }
      else if(_parent.ready == true)
      {
         _alpha = 20;
         _Y = 15;
      }
      else
      {
         _alpha = 0;
         _Y = -500;
      }
   }
   else if(_root.save.fishLevel >= 50 && _root.save.fishExamLeft < 0)
   {
      _alpha = 100;
      _Y = 15;
   }
   else
   {
      _alpha = 0;
      _Y = -500;
   }
}
