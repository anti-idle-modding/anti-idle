on(keyPress "<Down>"){
   bcOffset += 1;
   if(bcOffset > bcMaxOffset)
   {
      bcOffset = bcMaxOffset;
   }
}
