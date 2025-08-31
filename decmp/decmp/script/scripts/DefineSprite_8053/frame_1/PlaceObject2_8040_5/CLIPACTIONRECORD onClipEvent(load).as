onClipEvent(load){
   function checkFrame()
   {
      if(_root.previewingCate == cate && _root.previewingItem != -1)
      {
         fr = _root.previewingItem + 2;
      }
      else
      {
         fr = _root.save["newHouse" + cate];
      }
      if(_currentframe != fr)
      {
         gotoAndStop(fr);
      }
   }
   cate = "Eyes";
   del = 0;
   checkFrame();
}
