onClipEvent(load){
   function checkAlpha()
   {
      req = _root.save.arenaBacon;
      if(req >= _parent.petCost2)
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
      if(_root.save.arenaBacon >= _parent.petCost2)
      {
         _root.save.arenaBacon -= _parent.petCost2;
         _parent.feedPet(2);
         checkAlpha();
         _root.actiondescription = "You have: <b>" + _root.withComma(req) + "</b>";
      }
   }
   focus = false;
   checkAlpha();
}
