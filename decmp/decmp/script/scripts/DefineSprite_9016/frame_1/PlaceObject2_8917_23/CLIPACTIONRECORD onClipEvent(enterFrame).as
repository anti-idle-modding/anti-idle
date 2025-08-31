onClipEvent(enterFrame){
   progPct = _root.finalExp / expReq * 100;
   if(progPct > 100)
   {
      progPct = 100;
   }
   if(_root.saveid >= 20)
   {
      if(_root.save.challengeToken == Math.floor(_root.saveid * (_root.saveid + 1) * (_root.saveid - 7) * 156.4))
      {
         progPct = 100;
      }
      else
      {
         progPct = 0;
         if(_root.saveid == 23)
         {
            progPct = _root.save.level / 3000 * 100;
         }
         if(_root.saveid == 24)
         {
            progPct = _root.save.level / 1337 * 100;
         }
         if(_root.saveid == 25)
         {
            progPct = _root.save.fcgLevel10 / 80 * 100;
         }
         if(_root.saveid == 26)
         {
            progPct = _root.totalAllyTamed / 2;
         }
      }
   }
   _xscale = 100 - progPct;
   _parent.progText.text = Math.floor(progPct) + "%";
}
