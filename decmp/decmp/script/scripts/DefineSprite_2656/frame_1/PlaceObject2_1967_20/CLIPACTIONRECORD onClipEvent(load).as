onClipEvent(load){
   color = 16777215;
   pow = 0;
   bg.gotoAndStop(4);
   insideBar.gotoAndStop(4);
   textBox.textColor = 65280;
   glow1 = new flash.filters.GlowFilter(0,100,4,4,7,1,false,false);
   textBox.filters = [glow1];
}
