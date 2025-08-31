on(dragOver,rollOver){
   focus = true;
   if(_root.save.gDifficulty >= 3 && _root.save.level < 8999)
   {
      _root.actiondescription = "Cannot be used during an Impossible Ascension until level 8,999.";
   }
}
