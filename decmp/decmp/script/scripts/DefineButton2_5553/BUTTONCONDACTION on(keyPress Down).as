on(keyPress "<Down>"){
   museumOffset += 1;
   if(museumOffset > museumMaxOffset)
   {
      museumOffset = museumMaxOffset;
   }
}
