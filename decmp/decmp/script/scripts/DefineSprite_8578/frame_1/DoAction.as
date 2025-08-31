function checkGraph()
{
   maxGraphX = 10000;
   i = 0;
   while(i <= 7)
   {
      if(_root.save.expGraph[i] > maxGraphX)
      {
         maxGraphX = _root.save.expGraph[i];
      }
      if(_root.save.expGraph2[i] > maxGraphX)
      {
         maxGraphX = _root.save.expGraph2[i];
      }
      i++;
   }
   maxGraph = 10000;
   if(maxGraphX > 7500)
   {
      maxGraph = 50000;
   }
   if(maxGraphX > 37500)
   {
      maxGraph = 200000;
   }
   if(maxGraphX > 150000)
   {
      maxGraph = 1000000;
   }
   if(maxGraphX > 750000)
   {
      maxGraph = 5000000;
   }
   if(maxGraphX > 3750000)
   {
      maxGraph = 20000000;
   }
   if(maxGraphX > 15000000)
   {
      maxGraph = 100000000;
   }
   if(maxGraphX > 75000000)
   {
      maxGraph = 500000000;
   }
   if(maxGraphX > 375000000)
   {
      maxGraph = 2000000000;
   }
   if(maxGraphX > 1500000000)
   {
      maxGraph = 10000000000;
   }
   if(maxGraphX > 7500000000)
   {
      maxGraph = 50000000000;
   }
   if(maxGraphX > 37500000000)
   {
      maxGraph = 200000000000;
   }
   if(maxGraphX > 150000000000)
   {
      maxGraph = 1000000000000;
   }
   if(maxGraphX > 750000000000)
   {
      maxGraph = 5000000000000;
   }
   if(maxGraphX > 3750000000000)
   {
      maxGraph = 25000000000000;
   }
   if(maxGraphX > 15000000000000)
   {
      maxGraph = 100000000000000;
   }
   if(maxGraphX > 75000000000000)
   {
      maxGraph = Math.ceil(maxGraphX / 100000000000000) * 100000000000000;
   }
   mark1.text = _root.withCommaC(maxGraph * 0.25);
   mark2.text = _root.withCommaC(maxGraph * 0.5);
   mark3.text = _root.withCommaC(maxGraph * 0.75);
}
checkGraph();
onEnterFrame = function()
{
   checkGraph();
};
