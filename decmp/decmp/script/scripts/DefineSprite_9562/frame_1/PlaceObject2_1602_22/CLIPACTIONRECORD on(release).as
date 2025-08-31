on(release){
   checkCompatible();
   if(compatible == true && _root.save.specialStock[_parent.ID] > 0)
   {
      _root.save.questToken -= _parent.qtCost;
      if(_root.eventName == "Special Shop Day")
      {
         _root.gainEventToken(Math.ceil(_parent.qtCost / 5));
      }
      _root.save.specialStock[_parent.ID] -= 1;
      _parent.purchase();
   }
   checkCompatible();
}
