onClipEvent(load){
   function checkCompatible()
   {
      _parent.checkStat();
      compatible = false;
      _alpha = 10;
      if(_root.save.questToken >= _parent.qtCost && _root.save.specialStock[_parent.ID] > 0)
      {
         if(_parent.owned < _parent.cap || _parent.cap <= 0)
         {
            compatible = true;
            _alpha = 100;
         }
      }
   }
   checkCompatible();
}
