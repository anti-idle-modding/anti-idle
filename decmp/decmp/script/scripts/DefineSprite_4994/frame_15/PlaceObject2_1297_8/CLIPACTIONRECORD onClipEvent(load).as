onClipEvent(load){
   function checkFrame()
   {
      gotoAndStop(_parent._parent.frame);
      _parent.chipText.text = _parent._parent.attack;
   }
   checkFrame();
}
