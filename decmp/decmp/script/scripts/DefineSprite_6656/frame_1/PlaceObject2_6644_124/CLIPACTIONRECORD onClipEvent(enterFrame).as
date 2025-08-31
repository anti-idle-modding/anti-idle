onClipEvent(enterFrame){
   if((Key.isDown(_root.saveGlobal.keyBalLeft1) || Key.isDown(_root.saveGlobal.keyBalLeft2)) && holdingLeft == false)
   {
      holdingLeft = true;
      _parent.addBlock(1,curType);
      _parent.balanceFlash[1] = 300;
      reset();
   }
   if((Key.isDown(_root.saveGlobal.keyBalDown1) || Key.isDown(_root.saveGlobal.keyBalDown2)) && holdingDown == false)
   {
      holdingDown = true;
      _parent.addBlock(2,curType);
      _parent.balanceFlash[2] = 300;
      reset();
   }
   if((Key.isDown(_root.saveGlobal.keyBalRight1) || Key.isDown(_root.saveGlobal.keyBalRight2)) && holdingRight == false)
   {
      holdingRight = true;
      _parent.addBlock(3,curType);
      _parent.balanceFlash[3] = 300;
      reset();
   }
   if(!Key.isDown(_root.saveGlobal.keyBalLeft1) && !Key.isDown(_root.saveGlobal.keyBalLeft2))
   {
      holdingLeft = false;
   }
   if(!Key.isDown(_root.saveGlobal.keyBalDown1) && !Key.isDown(_root.saveGlobal.keyBalDown2))
   {
      holdingDown = false;
   }
   if(!Key.isDown(_root.saveGlobal.keyBalRight1) && !Key.isDown(_root.saveGlobal.keyBalRight2))
   {
      holdingRight = false;
   }
}
