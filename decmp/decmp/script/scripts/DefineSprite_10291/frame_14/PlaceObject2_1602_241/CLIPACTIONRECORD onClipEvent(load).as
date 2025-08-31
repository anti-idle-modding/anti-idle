onClipEvent(load){
   function checkAlpha()
   {
      req = _root.save.gardenFruit;
      if(req >= _parent.petCost1)
      {
         _alpha = 100;
      }
      else
      {
         _alpha = 30;
      }
   }
   function doThis()
   {
      if(_root.save.gardenFruit >= _parent.petCost1)
      {
         _root.save.gardenFruit -= _parent.petCost1;
         _parent.feedPet(1);
         checkAlpha();
         _root.actiondescription = "You have: <b>" + _root.withComma(req) + "</b>";
      }
   }
   focus = false;
   checkAlpha();
}
