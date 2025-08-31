on(release){
   if(Key.isDown(16) && _root.save.ripoffCard[_parent.cardID] >= _parent.cardTradeRatio)
   {
      _root.save.ripoffCard[_parent.cardID] -= _parent.cardTradeRatio;
      _root.save.mysteryBox[10] += 1;
      _root.dispNews(130,"Successfully traded Cards for 1 Supply Crate.");
   }
   _parent.checkCard();
}
