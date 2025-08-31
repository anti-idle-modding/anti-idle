onClipEvent(load){
   function checkAlpha()
   {
      req = _root.save.arcade100kMedal;
      if(req >= _parent.petCost4)
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
      if(_root.save.arcade100kMedal >= _parent.petCost4)
      {
         _root.save.arcade100kMedal -= _parent.petCost4;
         _parent.feedPet(4);
         checkAlpha();
         _root.actiondescription = "You have: <b>" + _root.withComma(req) + "</b>";
      }
   }
   focus = false;
   checkAlpha();
}
