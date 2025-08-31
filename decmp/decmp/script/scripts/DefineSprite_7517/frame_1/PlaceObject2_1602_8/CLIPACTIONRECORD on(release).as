on(release){
   if(_root.save.ripoffCard[_parent.cardID] > 0 && _root.save[_parent.cardName + "Time"] < 359100)
   {
      _root.save.ripoffCard[_parent.cardID] -= 1;
      _root.save[_parent.cardName + "Time"] += _parent.cardDuration * 3600;
      if(_root.save[_parent.cardName + "Time"] > 360000)
      {
         _root.save[_parent.cardName + "Time"] = 360000;
      }
      _root.save.ripoffCardUsed += 1;
      _root.dispNews(128,"Card activated!");
   }
   _parent.checkCard();
}
