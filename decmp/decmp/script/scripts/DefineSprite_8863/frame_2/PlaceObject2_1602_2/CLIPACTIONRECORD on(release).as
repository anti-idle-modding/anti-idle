on(release){
   if(Key.isDown(16))
   {
      _root.save.careerActive[_parent.careerID] = 0;
      _root.checkCareer();
      _root.actiondescription = "";
   }
}
