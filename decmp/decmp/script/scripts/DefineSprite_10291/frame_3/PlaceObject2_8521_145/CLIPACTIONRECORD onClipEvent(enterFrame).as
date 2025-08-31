onClipEvent(enterFrame){
   if(selectedColor == 1)
   {
      _root.save.titlered = Math.round(_xmouse);
      if(_root.save.titlered < 0)
      {
         _root.save.titlered = 0;
      }
      if(_root.save.titlered > 255)
      {
         _root.save.titlered = 255;
      }
   }
   else if(selectedColor == 2)
   {
      _root.save.titlegreen = Math.round(_xmouse);
      if(_root.save.titlegreen < 0)
      {
         _root.save.titlegreen = 0;
      }
      if(_root.save.titlegreen > 255)
      {
         _root.save.titlegreen = 255;
      }
   }
   else if(selectedColor == 3)
   {
      _root.save.titleblue = Math.round(_xmouse);
      if(_root.save.titleblue < 0)
      {
         _root.save.titleblue = 0;
      }
      if(_root.save.titleblue > 255)
      {
         _root.save.titleblue = 255;
      }
   }
}
