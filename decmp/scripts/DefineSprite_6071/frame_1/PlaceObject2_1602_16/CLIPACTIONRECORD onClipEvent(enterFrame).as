onClipEvent(enterFrame){
   if(_root.save.buttonBroken != true)
   {
      repairCost = Math.ceil(Math.sqrt(_root.save.level) * 5000) + 25631;
      _alpha = 10;
   }
   else
   {
      repairCost = Math.ceil(Math.sqrt(_root.save.level) * 500) + 2564;
      _alpha = 100;
   }
   repairCost = Math.floor(repairCost / 25) * 100;
   if(repairCost > 2000000)
   {
      repairCost = 2000000;
   }
   _parent.repairText.text = "-" + _root.withComma(repairCost);
}
