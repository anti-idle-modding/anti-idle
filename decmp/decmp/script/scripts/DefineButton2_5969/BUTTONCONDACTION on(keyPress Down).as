on(keyPress "<Down>"){
   allyOffset += 1;
   if(allyOffset > allyMaxOffset)
   {
      allyOffset = allyMaxOffset;
   }
   _root.actiondescription = "";
}
