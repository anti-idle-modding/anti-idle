function addRankedScore(gameID, scr, diff)
{
   gameNameArr = ["","Pong","Avoidance","Math","Whack","Mind","Balance","Count","MMRX"];
   gameName = gameNameArr[gameID];
   if(_root.save["highRanked" + gameName][0] < scr)
   {
      _root.save["highRanked" + gameName][2] = _root.save["highRanked" + gameName][1];
      _root.save["highRanked" + gameName][1] = _root.save["highRanked" + gameName][0];
      _root.save["highRanked" + gameName][0] = scr;
      _root.save["highRanked" + gameName + "Diff"][2] = _root.save["highRanked" + gameName + "Diff"][1];
      _root.save["highRanked" + gameName + "Diff"][1] = _root.save["highRanked" + gameName + "Diff"][0];
      _root.save["highRanked" + gameName + "Diff"][0] = diff;
   }
   else if(_root.save["highRanked" + gameName][1] < scr)
   {
      _root.save["highRanked" + gameName][2] = _root.save["highRanked" + gameName][1];
      _root.save["highRanked" + gameName][1] = scr;
      _root.save["highRanked" + gameName + "Diff"][2] = _root.save["highRanked" + gameName + "Diff"][1];
      _root.save["highRanked" + gameName + "Diff"][1] = diff;
   }
   else if(_root.save["highRanked" + gameName][2] < scr)
   {
      _root.save["highRanked" + gameName][2] = scr;
      _root.save["highRanked" + gameName + "Diff"][2] = diff;
   }
}
function ratingToString(rat)
{
   if(rat < 10)
   {
      res = "0.0" + Math.floor(rat);
   }
   else if(rat < 100)
   {
      res = "0." + Math.floor(rat);
   }
   else
   {
      res = Math.floor(rat / 100) + "." + Math.floor(rat % 100);
      if(Math.floor(rat % 100) < 10)
      {
         res = Math.floor(rat / 100) + ".0" + Math.floor(rat % 100);
      }
   }
   return res;
}
function calcRating(gameID, scr, ran)
{
   rat = 0;
   if(gameID == 1)
   {
      thresh = 4200000;
      crv = 2;
      nob = 0.3;
   }
   else if(gameID == 2)
   {
      thresh = 1750000;
      crv = 0.75;
      nob = 0.45;
   }
   else if(gameID == 3)
   {
      thresh = 2400000;
      crv = 2;
      nob = 0.45;
   }
   else if(gameID == 4)
   {
      thresh = 3300000;
      crv = 3.5;
      nob = 0.9;
   }
   else if(gameID == 5)
   {
      thresh = 10000000;
      crv = 1.25;
      nob = 0.3;
   }
   else if(gameID == 6)
   {
      thresh = 6000000;
      crv = 2.5;
      nob = 0.45;
   }
   else if(gameID == 7)
   {
      thresh = 13500000;
      crv = 1;
      nob = 0.3;
   }
   else if(gameID == 8)
   {
      thresh = 6000000;
      crv = 1.25;
      nob = 0.3;
   }
   if(scr > thresh)
   {
      scr = Math.floor(thresh + (scr - thresh) * crv);
   }
   thresh *= 0.7;
   mul = 0;
   if(ran == 1)
   {
      mul = 1.4;
   }
   else if(ran == 2)
   {
      mul = 0.5;
   }
   else if(ran == 3)
   {
      mul = 0.1;
   }
   if(scr > thresh * 1.6)
   {
      rat = Math.floor((150 + (scr - thresh * 1.6) / (thresh * 0.05)) * mul);
   }
   else if(scr > thresh)
   {
      rat = Math.floor((120 + (scr - thresh) / (thresh * 0.02)) * mul);
   }
   else
   {
      rat = Math.floor(Math.pow(scr / thresh,nob) * 120 * mul);
   }
   if(isNaN(rat))
   {
      rat = 0;
   }
   if(rat > 200)
   {
      rat = 200;
   }
   return rat;
}
function checkGlobal()
{
   _root.arcadeTmpRating = 0;
   _root.arcadeTmpRatingGame = new Array();
   _root.arcadeTmpScoreGame = new Array();
   _root.arcadeTmpDiff = new Array();
   r = 1;
   while(r <= 8)
   {
      _root.arcadeTmpRatingGame[r] = new Array();
      _root.arcadeTmpScoreGame[r] = new Array();
      _root.arcadeTmpDiff[r] = new Array();
      r++;
   }
   r = 0;
   while(r <= 2)
   {
      _root.arcadeTmpScoreGame[1][r] = _root.save.highRankedPong[r];
      _root.arcadeTmpScoreGame[2][r] = _root.save.highRankedAvoidance[r];
      _root.arcadeTmpScoreGame[3][r] = _root.save.highRankedMath[r];
      _root.arcadeTmpScoreGame[4][r] = _root.save.highRankedWhack[r];
      _root.arcadeTmpScoreGame[5][r] = _root.save.highRankedMind[r];
      _root.arcadeTmpScoreGame[6][r] = _root.save.highRankedBalance[r];
      _root.arcadeTmpScoreGame[7][r] = _root.save.highRankedCount[r];
      _root.arcadeTmpScoreGame[8][r] = _root.save.highRankedMMRX[r];
      _root.arcadeTmpDiff[1][r] = _root.save.highRankedPongDiff[r];
      _root.arcadeTmpDiff[2][r] = _root.save.highRankedAvoidanceDiff[r];
      _root.arcadeTmpDiff[3][r] = _root.save.highRankedMathDiff[r];
      _root.arcadeTmpDiff[4][r] = _root.save.highRankedWhackDiff[r];
      _root.arcadeTmpDiff[5][r] = _root.save.highRankedMindDiff[r];
      _root.arcadeTmpDiff[6][r] = _root.save.highRankedBalanceDiff[r];
      _root.arcadeTmpDiff[7][r] = _root.save.highRankedCountDiff[r];
      _root.arcadeTmpDiff[8][r] = _root.save.highRankedMMRXDiff[r];
      _root.arcadeTmpRatingGame[1][r] = calcRating(1,_root.save.highRankedPong[r],r + 1);
      _root.arcadeTmpRatingGame[2][r] = calcRating(2,_root.save.highRankedAvoidance[r],r + 1);
      _root.arcadeTmpRatingGame[3][r] = calcRating(3,_root.save.highRankedMath[r],r + 1);
      _root.arcadeTmpRatingGame[4][r] = calcRating(4,_root.save.highRankedWhack[r],r + 1);
      _root.arcadeTmpRatingGame[5][r] = calcRating(5,_root.save.highRankedMind[r],r + 1);
      _root.arcadeTmpRatingGame[6][r] = calcRating(6,_root.save.highRankedBalance[r],r + 1);
      _root.arcadeTmpRatingGame[7][r] = calcRating(7,_root.save.highRankedCount[r],r + 1);
      _root.arcadeTmpRatingGame[8][r] = calcRating(8,_root.save.highRankedMMRX[r],r + 1);
      _root.arcadeTmpRating += calcRating(1,_root.save.highRankedPong[r],r + 1);
      _root.arcadeTmpRating += calcRating(2,_root.save.highRankedAvoidance[r],r + 1);
      _root.arcadeTmpRating += calcRating(3,_root.save.highRankedMath[r],r + 1);
      _root.arcadeTmpRating += calcRating(4,_root.save.highRankedWhack[r],r + 1);
      _root.arcadeTmpRating += calcRating(5,_root.save.highRankedMind[r],r + 1);
      _root.arcadeTmpRating += calcRating(6,_root.save.highRankedBalance[r],r + 1);
      _root.arcadeTmpRating += calcRating(7,_root.save.highRankedCount[r],r + 1);
      _root.arcadeTmpRating += calcRating(8,_root.save.highRankedMMRX[r],r + 1);
      r++;
   }
   pctText.text = ratingToString(_root.arcadeTmpRating);
   _root.save.arcadeRating = Math.floor(_root.arcadeTmpRating / 100);
   scoreMedalText.text = _root.withComma(_root.save.arcade100kMedal);
   _root.arcadeRewardMult = 3;
   if(_root.save.rankedMode == true)
   {
      if(_root.save.careerLevel[6] >= 100)
      {
         _root.arcadeRewardMult *= 1 + _root.save.arcadeRating * 0.12;
      }
      else
      {
         _root.arcadeRewardMult *= 1 + _root.save.arcadeRating * 0.1;
      }
   }
   else if(_root.save.careerLevel[6] >= 200)
   {
      _root.arcadeRewardMult *= 1 + _root.save.arcadeRating * 0.06;
   }
   else
   {
      _root.arcadeRewardMult *= 1 + _root.save.arcadeRating * 0.05;
   }
   arcadeTokenText.text = _root.save.arcadeToken;
}
checkGlobal();
gotoAndStop(2);
