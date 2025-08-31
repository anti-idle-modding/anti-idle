onClipEvent(enterFrame){
   feedMult = (_root.save.feedTotal + 1) / 100;
   if(feedMult > 1)
   {
      feedMult = 1;
   }
   feedCost = Math.floor((100 + _root.save.feedToday * 2.5) * Math.sqrt(Math.min(_root.save.bestLevel,9000)) * feedMult) * 500;
   if(_root.save.coin >= feedCost)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
   if(Key.isDown(16) && this.hitTest(_root.cursor._x,_root.cursor._y,true))
   {
      if(_root.save.coin >= feedCost && _root.save.bestLevel >= 50)
      {
         _root.save.coin -= feedCost;
         _root.gainBlueCoin(1);
         if(_root.save.questType == "Dragon of Wisdom")
         {
            if(_root.save.questSubtype == "Feed")
            {
               _root.save.questCount += 1;
            }
         }
         _root.save.feedToday += 1;
         _root.save.feedTotal += 1;
         _root.save.knowledge += 1;
         selectedSpeech = random(totalSpeech);
         if(isNaN(_root.save.wisdomDiscovered[2]))
         {
            selectedSpeech = 2;
         }
         if(selectedSpeech == 1)
         {
            _root.save.theGame += 1;
         }
         _parent._parent.dragonSpeech.speech(speechList[selectedSpeech]);
         if(_root.save.feedToday == 200)
         {
            _parent._parent.dragonSpeech.speech("That\'s a lot of Coins! The seal of the sword seems to be gone now, and you can take it. It will be sealed again tomorrow though, so be quick.");
         }
         else if(!isNaN(_root.save.wisdomDiscovered[selectedSpeech]))
         {
            _root.save.wisdomDiscovered[selectedSpeech] += 1;
         }
         else
         {
            _root.save.wisdomDiscovered[selectedSpeech] = 1;
         }
         if(_root.dow == 5 || _root.saveid >= 10)
         {
            _root.save.feedMeter += 2;
         }
         else
         {
            _root.save.feedMeter += 1;
         }
         feedMult = (_root.save.feedTotal + 1) / 100;
         if(feedMult > 1)
         {
            feedMult = 1;
         }
         feedCost = Math.floor((100 + _root.save.feedToday * 2.5) * Math.sqrt(_root.save.bestLevel) * feedMult) * 500;
         _root.actiondescription = "Cost to feed: <b>" + _root.withComma(feedCost) + "</b> Coins\n\nIt\'s worth it, really!";
      }
   }
}
