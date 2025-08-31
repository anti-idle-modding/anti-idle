onClipEvent(enterFrame){
   if(_root.saveid >= 20 && _root.save.challengeToken == Math.floor(_root.saveid * (_root.saveid + 1) * (_root.saveid - 7) * 156.4))
   {
      numberdisp = "COMPLETE!";
   }
   else if(numberdisp != _root.withComma(_root.finalExp))
   {
      if(_root._quality == "BEST")
      {
         pow = 1;
         glow2 = new flash.filters.GlowFilter(65280,40,5,5,pow,1,false,false);
         filters = [glow2];
      }
      numberdisp = _root.withComma(_root.finalExp);
      if(_root.eventName == "April Fools")
      {
         numberdisp = _root.withComma(_root.finalExp * 3);
      }
   }
   insideBar.xscale = _root.save.currentExp / _root.requiredExp * 100;
   if(_root.save.level == 9002)
   {
      insideBar.xscale = 100;
      if(_root.saveid != 4)
      {
         insideBar.gotoAndStop(8);
         pbShiny.gotoAndStop(2);
      }
   }
   else if(_root.save.bestLevel == 9002)
   {
      if(_root.saveid != 4)
      {
         insideBar.gotoAndStop(9);
         pbShiny.gotoAndStop(2);
      }
   }
   if(pow > 0)
   {
      pow -= 0.05;
      glow2 = new flash.filters.GlowFilter(65280,40,5,5,pow,1,false,false);
      filters = [glow2];
   }
}
