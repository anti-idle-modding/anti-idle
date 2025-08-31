function checkWisdom()
{
   tempWisdom = _root.bookPage * 8 - 8;
   i = 1;
   while(i <= 8)
   {
      wisdomID = wisdomList[tempWisdom + i - 1];
      this["b" + i + "t"].text = tempWisdom + i + ". \"" + _parent.feedButton.speechButton.speechList[wisdomID] + "\"";
      if(isNaN(wisdomID))
      {
         this["b" + i + "t"].text = "";
      }
      i++;
   }
   p1t.text = _root.bookPage * 2;
   p2t.text = _root.bookPage * 2 + 1;
}
wisdomList = new Array();
i = 0;
while(i <= _parent.feedButton.speechButton.speechList.length)
{
   if(!isNaN(_root.save.wisdomDiscovered[i]))
   {
      wisdomList.push(i);
   }
   i++;
}
checkWisdom();
