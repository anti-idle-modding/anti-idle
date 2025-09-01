on(release){
   checkCost();
   if(_root.save.remStupidity >= _parent.cost)
   {
      _root.save.remStupidity -= _parent.cost;
      _root.save.ascStupidity += 1;
      checkCost();
   }
}
