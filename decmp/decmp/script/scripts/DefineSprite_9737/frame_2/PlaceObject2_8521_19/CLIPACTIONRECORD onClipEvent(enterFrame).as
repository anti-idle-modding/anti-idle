onClipEvent(enterFrame){
   if(selectedColor == 1)
   {
      _parent.cR = Math.round(_xmouse);
      if(_parent.cR < 0)
      {
         _parent.cR = 0;
      }
      if(_parent.cR > 255)
      {
         _parent.cR = 255;
      }
   }
   else if(selectedColor == 2)
   {
      _parent.cG = Math.round(_xmouse);
      if(_parent.cG < 0)
      {
         _parent.cG = 0;
      }
      if(_parent.cG > 255)
      {
         _parent.cG = 255;
      }
   }
   else if(selectedColor == 3)
   {
      _parent.cB = Math.round(_xmouse);
      if(_parent.cB < 0)
      {
         _parent.cB = 0;
      }
      if(_parent.cB > 255)
      {
         _parent.cB = 255;
      }
   }
}
