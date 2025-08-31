on(release){
   if(_root.saveGlobal.challengeUnlocked == true)
   {
      if(_root.saveGlobal.selectedSave != 5)
      {
         _root.saveGlobal.selectedSave = 5;
      }
      else
      {
         _root.selectSavefile(_root.saveGlobal.selectedSave);
      }
   }
}
