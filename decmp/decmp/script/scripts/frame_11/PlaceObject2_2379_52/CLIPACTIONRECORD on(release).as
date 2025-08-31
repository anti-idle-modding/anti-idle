on(release){
   if(_root.saveGlobal.selectedSave != 1)
   {
      _root.saveGlobal.selectedSave = 1;
   }
   else
   {
      _root.selectSavefile(_root.saveGlobal.selectedSave);
   }
}
