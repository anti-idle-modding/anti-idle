on(release){
   if(Key.isDown(17))
   {
      if(_root.saveGlobal.selectedSave != 4)
      {
         _root.saveGlobal.selectedSave = 4;
      }
      else
      {
         _root.selectSavefile(_root.saveGlobal.selectedSave);
      }
   }
   else if(_root.saveGlobal.selectedSave != 2)
   {
      _root.saveGlobal.selectedSave = 2;
   }
   else
   {
      _root.selectSavefile(_root.saveGlobal.selectedSave);
   }
}
