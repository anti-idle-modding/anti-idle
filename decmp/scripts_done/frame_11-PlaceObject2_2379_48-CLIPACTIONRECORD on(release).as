on(release){
   if(_root.saveGlobal.selectedSave != 0)
   {
      _root.saveGlobal.selectedSave = 0;
   }
   else
   {
      _root.selectSavefile(_root.saveGlobal.selectedSave);
   }
}
