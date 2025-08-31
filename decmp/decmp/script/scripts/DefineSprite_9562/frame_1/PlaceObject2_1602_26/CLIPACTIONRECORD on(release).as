on(release){
   checkCompatible();
   if(compatible == true && _root.save.specialStock[_parent.ID] > 0)
   {
      _root.save.eventToken -= _parent.etCost;
      _root.save.specialStock[_parent.ID] -= 1;
      _parent.purchase();
   }
   checkCompatible();
}
