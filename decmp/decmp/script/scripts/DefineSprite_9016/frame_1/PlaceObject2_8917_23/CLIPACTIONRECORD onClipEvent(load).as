onClipEvent(load){
   expReq = 2500000000000;
   if(_root.save.gDifficulty == 2)
   {
      expReq *= 2;
   }
   if(_root.save.gDifficulty == 3)
   {
      expReq *= 4;
   }
   if(_root.save.gOldAscension == false)
   {
      if(_root.save.banned >= 1000)
      {
         expReq += 25000000000000;
      }
      else if(_root.save.banned >= 800)
      {
         expReq += 10000000000 * (_root.save.banned - 800) + 23000000000000;
      }
      else if(_root.save.banned >= 600)
      {
         expReq += 20000000000 * (_root.save.banned - 600) + 19000000000000;
      }
      else if(_root.save.banned >= 400)
      {
         expReq += 30000000000 * (_root.save.banned - 400) + 13000000000000;
      }
      else if(_root.save.banned >= 200)
      {
         expReq += 40000000000 * (_root.save.banned - 200) + 5000000000000;
      }
      else if(_root.save.banned >= 100)
      {
         expReq += 50000000000 * (_root.save.banned - 100);
      }
   }
   if(_root.saveid >= 10)
   {
      expReq = 3000000000000;
   }
}
