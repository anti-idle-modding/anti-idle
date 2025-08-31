on(release){
   _root.save.manualSave += 1;
   _root.my_so.flush();
   _root.showPopup("Game Manually Saved","Your progress has been saved.\nDid you know that this game auto-saves as well?");
}
