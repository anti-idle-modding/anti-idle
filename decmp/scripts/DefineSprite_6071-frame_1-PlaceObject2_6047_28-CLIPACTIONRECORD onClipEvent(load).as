onClipEvent(load){
   function resetRot()
   {
      targetRot = Math.random() * 3 + 3;
      if(Math.random() < 0.5)
      {
         targetRot *= -1;
      }
      if(_root.save.buttonPress == 0)
      {
         targetRot = 0;
      }
   }
   resetRot();
}
