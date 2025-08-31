onClipEvent(load){
   nameText.text = "Yellow";
   curItem = "";
   slowDur = 0;
   stunDur = 0;
   darkDur = 0;
   fastDur = 0;
   jumpDel = 0;
   dashDelL = 0;
   dashDelR = 0;
   difficulty = 25 + random(6);
   energy = 90 + difficulty;
   maxEnergy = 90 + difficulty;
   power = 0.5 + difficulty * 0.005;
   maxspeed = 10 + difficulty * 0.1;
   jump = 8 + difficulty * 0.04;
   dash = 5 + difficulty * 0.15;
   boost = 5 + difficulty * 0.15;
   xspeed = 0 + difficulty * 0.5;
   yspeed = 0;
   holdL = false;
   holdR = false;
}
