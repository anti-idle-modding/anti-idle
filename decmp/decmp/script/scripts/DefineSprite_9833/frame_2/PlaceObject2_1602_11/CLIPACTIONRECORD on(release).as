on(release){
   if(_parent.quantity > 0)
   {
      _root.save.botPoint -= _parent.totalCost;
      _root.save.botCurrentOp = _parent.selectedTask;
      _root.save.botCurrentOpTime = 0;
      _root.save.botCurrentOpNum = 1;
      _root.save.botCurrentOpMax = _parent.quantity;
      _parent.gotoAndStop(1);
   }
}
