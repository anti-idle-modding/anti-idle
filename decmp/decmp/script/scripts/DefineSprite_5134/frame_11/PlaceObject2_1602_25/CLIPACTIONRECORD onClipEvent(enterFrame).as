onClipEvent(enterFrame){
   if(Key.isDown(16) && this.hitTest(_root.cursor._x,_root.cursor._y,true))
   {
      if(_root.save.arenaNerfGem >= 100)
      {
         _root.save.arenaNerfGem -= 100;
         openBox();
      }
   }
}
