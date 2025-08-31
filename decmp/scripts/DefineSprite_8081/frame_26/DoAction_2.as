function checkText()
{
   recordText1.text = _root.withComma(_root.save.speedRunMode1000);
   recordText2.text = _root.withComma(_root.save.speedRunMode2000);
   recordText3.text = _root.withComma(_root.save.speedRunMode3000);
   recordText4.text = _root.withComma(_root.save.speedRunMode4000);
   recordText5.text = _root.withComma(_root.save.speedRunMode5000);
   recordText6.text = _root.withComma(_root.save.speedRunMode6000);
   recordText7.text = _root.withComma(_root.save.speedRunMode7000);
   recordText8.text = _root.withComma(_root.save.speedRunMode8000);
   recordText9.text = _root.withComma(_root.save.speedRunMode9000);
   recordText10.text = _root.withComma(_root.save.speedRunMode9001);
   i = 1;
   while(i <= 10)
   {
      if(this["recordText" + i].text == "2,147,483,647")
      {
         this["recordText" + i].text = "-----";
      }
      i++;
   }
   highText.text = _root.withComma(_root.save.speedRunScore);
   totalText.text = _root.withComma(_root.save.speedRunTotalCoin);
   coinText.text = _root.withComma(_root.save.speedRunCoin);
   countText.text = _root.withComma(_root.save.speedRunClear);
}
checkText();
onEnterFrame = function()
{
   checkText();
};
