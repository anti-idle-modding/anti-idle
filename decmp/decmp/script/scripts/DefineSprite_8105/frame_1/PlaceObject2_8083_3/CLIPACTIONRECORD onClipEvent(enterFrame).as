onClipEvent(enterFrame){
   delay += 1;
   if(delay >= 2)
   {
      delay = 0;
      if(_root._quality == "BEST" || _root._quality == "HIGH")
      {
         glow2 = new flash.filters.GlowFilter(65535,40,5,5,pow,1,false,false);
         filters = [glow2];
      }
      numberdisp = Math.floor(_root.progPercent) + "%";
   }
   ibf = 6;
   if(_root.progPercent >= 100)
   {
      if(_root._quality == "BEST" || _root._quality == "HIGH")
      {
         pow = 1;
      }
      numberdisp = "Ready!";
   }
   if(_root.progPercent >= 200)
   {
      numberdisp = "Ready! [" + _root.withComma(Math.floor(_root.progPercent / 100)) + "]";
   }
   if(_root.save.idleMode == true)
   {
      ibf = 12;
   }
   if(_root.save.rewardBotTime > 0)
   {
      ibt = 10 + _root.save.progStore * 0.01;
      if(_root.cursoridle >= ibt)
      {
         ibf = 12;
      }
      if(_root.cursoridle >= ibt && _root.cursoridle < ibt + 5)
      {
         numberdisp = "IDLEBOT ACTIVATED";
      }
      else if(_root.cursoridle > ibt / 2 && _root.cursoridle < ibt)
      {
         numberdisp = "Idlebot activating in " + Math.floor(ibt - _root.cursoridle) + "s";
      }
   }
   if(_root.progPercent >= 100)
   {
      if(_root.cursoridle < 0.5 || _root.save.rewardBotTime > 0 || _root.save.idleMode == true)
      {
         _root.claimReward();
      }
   }
   insideBar.xscale = _root.progPercent;
   if(_root.progPercent > 100)
   {
      if(_root.progPercent >= _root.save.progStore)
      {
         insideBar2.xscale = 0;
         insideBar3.xscale = 100;
         insideBar4.xscale = 0;
      }
      else if(_root.progPercent % 200 > 100)
      {
         insideBar2.xscale = 0;
         insideBar4.xscale = _root.progPercent % 200 - 100;
         if(_root.progPercent > 300)
         {
            insideBar3.xscale = 100;
         }
         else
         {
            insideBar3.xscale = 0;
         }
      }
      else
      {
         insideBar2.xscale = 100;
         insideBar3.xscale = _root.progPercent % 200;
         insideBar4.xscale = 0;
      }
   }
   else
   {
      insideBar2.xscale = 0;
      insideBar3.xscale = 0;
      insideBar4.xscale = 0;
   }
   if(_root.save.rewardBotTime > 0)
   {
      ibt = 10 + _root.save.progStore * 0.01;
      if(_root.cursoridle >= ibt)
      {
         insideBar2.xscale = insideBar._xscale;
         if(insideBar2.xscale > 50)
         {
            insideBar2.xscale = 50;
         }
      }
   }
   if(pow > 0)
   {
      pow -= 0.1;
   }
   insideBar2._xscale = insideBar2.xscale;
   insideBar3._xscale = insideBar3.xscale;
   if(insideBar._currentframe != ibf)
   {
      insideBar.gotoAndStop(ibf);
   }
}
