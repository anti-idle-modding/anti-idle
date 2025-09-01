onClipEvent(load){
   function checkAlpha()
   {
      req = _root.save.stadiumToken;
      if(req >= _parent.petCost5)
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
      if(_root.save.stadiumToken >= _parent.petCost5)
      {
         _root.save.stadiumToken -= _parent.petCost5;
         _parent.feedPet(5);
         checkAlpha();
         _root.actiondescription = "You have: <b>" + _root.withComma(req) + "</b>";
      }
   }
   focus = false;
   checkAlpha();
}
