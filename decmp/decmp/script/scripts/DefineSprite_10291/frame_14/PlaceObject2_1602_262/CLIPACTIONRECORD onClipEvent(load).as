onClipEvent(load){
   function checkAlpha()
   {
      req = _root.save.specialPetFood;
      if(req >= _parent.petCost8)
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
      if(_root.save.specialPetFood >= _parent.petCost8)
      {
         _root.save.specialPetFood -= _parent.petCost8;
         _parent.feedPet(8);
         checkAlpha();
         _root.actiondescription = "You have: <b>" + _root.withComma(req) + "</b>";
      }
   }
   focus = false;
   checkAlpha();
}
