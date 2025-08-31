on(release){
   if(cardloc <= 6 && cardloc > 0 && _root["exist_card" + cardloc] == 1)
   {
      if(Key.isDown(16))
      {
         _parent._parent._parent.discardCard(cardloc);
      }
      else
      {
         _parent._parent._parent.summonCard(cardloc);
      }
   }
}
