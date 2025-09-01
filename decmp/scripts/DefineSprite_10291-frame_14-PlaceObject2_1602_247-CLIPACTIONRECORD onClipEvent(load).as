onClipEvent(load){
   function checkAlpha()
   {
      req = _root.save.buttonPurple;
      if(req >= _parent.petCost3)
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
      if(_root.save.buttonPurple >= _parent.petCost3)
      {
         _root.save.buttonPurple -= _parent.petCost3;
         _parent.feedPet(3);
         checkAlpha();
         _root.actiondescription = "You have: <b>" + _root.withComma(req) + "</b>";
      }
   }
   focus = false;
   checkAlpha();
}
