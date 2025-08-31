on(release){
   if(_root.saveGlobal.selectedSave != 3)
   {
      _root.saveGlobal.selectedSave = 3;
   }
   else
   {
      _root.selectSavefile(_root.saveGlobal.selectedSave);
   }
}
