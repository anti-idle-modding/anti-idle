on(keyPress "<Down>"){
   craftOffset += 1;
   if(craftOffset > craftMaxOffset)
   {
      craftOffset = craftMaxOffset;
   }
}
