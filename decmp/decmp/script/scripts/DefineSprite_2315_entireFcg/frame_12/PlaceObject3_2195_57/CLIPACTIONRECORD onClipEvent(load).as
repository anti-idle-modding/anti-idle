onClipEvent(load){
   function reset()
   {
      pack = 5 + random(2);
      if(pack == 1)
      {
         cost = 50;
      }
      if(pack == 2)
      {
         cost = 450 + random(3) * 150;
      }
      if(pack == 3)
      {
         cost = 75 + random(3) * 25;
      }
      if(pack == 4)
      {
         cost = 750 + random(3) * 250;
      }
      if(pack == 5)
      {
         cost = 4000 + random(3) * 1000;
      }
      if(pack == 6)
      {
         cost = 9001;
      }
      if(pack == 7)
      {
         cost = 450 + random(3) * 150;
      }
      if(pack == 8)
      {
         cost = 450 + random(3) * 150;
      }
      if(pack == 9)
      {
         cost = 1500 + random(3) * 500;
      }
      if(pack == 10)
      {
         cost = 450 + random(3) * 150;
      }
      if(pack == 11)
      {
         cost = 450 + random(3) * 150;
      }
      if(pack == 12)
      {
         cost = 450 + random(3) * 150;
      }
      if(pack == 13)
      {
         cost = 450 + random(3) * 150;
      }
      _root.save.fcgPack3 = pack;
      _root.save.fcgPack3Cost = cost;
      gotoAndStop(pack);
      costText.text = _root.withComma(cost);
   }
   gotoAndStop(_root.save.fcgPack3);
   costText.text = _root.withComma(_root.save.fcgPack3Cost);
}
