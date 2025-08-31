onClipEvent(load){
   textBox.textColor = 16777215;
   glow1 = new flash.filters.GlowFilter(0,70,5,5,3,1,false,false);
   textBox.filters = [glow1];
}
