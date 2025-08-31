on(release){
   if(Key.isDown(16))
   {
      _root.save.careerBoost[_parent.careerID] = 0;
      _root.checkCareer();
      _root.actiondescription = "";
   }
}
