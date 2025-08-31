on(release){
   if(_parent.quantity > 0 && !isNaN(_parent.quantity) && !isNaN(_parent.totalCost))
   {
      _parent.buyItem();
      _parent.gotoAndStop(3);
   }
}
