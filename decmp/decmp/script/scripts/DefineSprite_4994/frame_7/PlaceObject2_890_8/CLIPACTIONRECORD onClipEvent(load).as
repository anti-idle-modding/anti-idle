onClipEvent(load){
   function checkFrame()
   {
      gotoAndStop(_parent._parent.frame);
   }
   this.setMask(_parent.itemMark);
   checkFrame();
}
