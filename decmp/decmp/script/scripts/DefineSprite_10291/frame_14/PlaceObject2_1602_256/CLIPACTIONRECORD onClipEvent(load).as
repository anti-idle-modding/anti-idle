onClipEvent(load){
   function checkAlpha()
   {
      req = _root.save.fcgCash;
      if(req >= _parent.petCost6)
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
      if(_root.save.fcgCash >= _parent.petCost6)
      {
         _root.save.fcgCash -= _parent.petCost6;
         _parent.feedPet(6);
         checkAlpha();
         _root.actiondescription = "You have: <b>" + _root.withComma(req) + "</b>";
      }
   }
   focus = false;
   checkAlpha();
}
