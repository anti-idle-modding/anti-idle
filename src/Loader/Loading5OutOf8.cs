using Godot;
using Math = AntiIdle.Common.Flash.Math;

// MATCH: frame_6/DoAction.as
public partial class Loading5OutOf8 : Control
{
    // MATCH: frame_6/DoAction.as:addNewsType()
    public void addNewsType(double typeID, double feature, double defaultImportance, double defaultColor, string sauceName)
    {
        _root.newsCount += 1;
        _root.newsID[_root.newsCount] = typeID;
        _root.newsFeature[typeID] = feature;
        _root.newsSauceName[_root.newsCount] = sauceName;
        if (typeID != 0 && isNaN(_root.saveGlobal.breakR[typeID]))
        {
            if (defaultImportance == 4)
            {
                _root.saveGlobal.breakTab1[typeID] = true;
                _root.saveGlobal.breakTab2[typeID] = true;
                _root.saveGlobal.breakTab3[typeID] = true;
                _root.saveGlobal.breakTab4[typeID] = true;
                _root.saveGlobal.breakAll[typeID] = true;
                _root.saveGlobal.breakFeature[typeID] = true;
            }
            else if (defaultImportance == 3)
            {
                _root.saveGlobal.breakTab1[typeID] = true;
                _root.saveGlobal.breakTab2[typeID] = true;
                _root.saveGlobal.breakTab3[typeID] = true;
                _root.saveGlobal.breakTab4[typeID] = false;
                _root.saveGlobal.breakAll[typeID] = false;
                _root.saveGlobal.breakFeature[typeID] = true;
            }
            else if (defaultImportance == 2)
            {
                _root.saveGlobal.breakTab1[typeID] = true;
                _root.saveGlobal.breakTab2[typeID] = true;
                _root.saveGlobal.breakTab3[typeID] = false;
                _root.saveGlobal.breakTab4[typeID] = false;
                _root.saveGlobal.breakAll[typeID] = false;
                _root.saveGlobal.breakFeature[typeID] = true;
            }
            else if (defaultImportance == 1)
            {
                _root.saveGlobal.breakTab1[typeID] = true;
                _root.saveGlobal.breakTab2[typeID] = false;
                _root.saveGlobal.breakTab3[typeID] = false;
                _root.saveGlobal.breakTab4[typeID] = false;
                _root.saveGlobal.breakAll[typeID] = false;
                _root.saveGlobal.breakFeature[typeID] = false;
            }
            else
            {
                _root.saveGlobal.breakTab1[typeID] = false;
                _root.saveGlobal.breakTab2[typeID] = false;
                _root.saveGlobal.breakTab3[typeID] = false;
                _root.saveGlobal.breakTab4[typeID] = false;
                _root.saveGlobal.breakAll[typeID] = false;
                _root.saveGlobal.breakFeature[typeID] = false;
            }
            if (feature == 0)
            {
                _root.saveGlobal.breakFeature[typeID] = false;
            }
            _root.saveGlobal.breakR[typeID] = Math.floor(defaultColor / 65536);
            _root.saveGlobal.breakG[typeID] = Math.floor((defaultColor - _root.saveGlobal.breakR[typeID] * 65536) / 256);
            _root.saveGlobal.breakB[typeID] = Math.floor(defaultColor - _root.saveGlobal.breakR[typeID] * 65536 - _root.saveGlobal.breakG[typeID] * 256);
        }
    }

    public override void _Ready()
    {
        _root.newsCount = 0;
        _root.newsID = new();
        _root.newsFeature = new();
        _root.newsSauceName = new();
        addNewsType(0, 0, 0, 0, "GENERAL");
        addNewsType(1, 0, 4, 16711680, "System messages (recommended)");
        addNewsType(167, 0, 4, 10092441, "EXP bar information");
        addNewsType(163, 0, 3, 16777215, "When I gain White Coins");
        addNewsType(159, 0, 3, 13434624, "Speedrun / Challenge Mode information");
        addNewsType(2, 0, 3, 16776960, "When I level up");
        addNewsType(3, 0, 3, 16776960, "When I earn an achievement");
        addNewsType(155, 0, 3, 13434879, "When I gain Event Tokens");
        addNewsType(0, 0, 0, 0, "PROGRESS BAR");
        addNewsType(4, 0, 1, 16768460, "When I claim a reward");
        addNewsType(5, 0, 1, 16768460, "When I claim multiple rewards");
        addNewsType(6, 0, 1, 16768460, "When I gain free Boost");
        addNewsType(7, 0, 1, 16768460, "When I gain additional login rewards");
        addNewsType(8, 0, 1, 16768460, "When Epic Skill \'Double Progress\' activates");
        addNewsType(9, 0, 1, 16768460, "When Epic Skill \'Boost Charger\' activates");
        addNewsType(10, 0, 1, 16768460, "When Epic Skill \'Coin Collector\' activates");
        addNewsType(11, 0, 1, 16768460, "When Epic Skill \'Battery Booster\' activates");
        addNewsType(12, 0, 1, 16768460, "When Epic Skill \'Fanatical Fisher\' activates");
        addNewsType(13, 0, 1, 16768460, "When Epic Skill \'Module Master\' activates");
        addNewsType(184, 0, 1, 16768460, "When Epic Skill \'Cyborg Charger\' activates");
        addNewsType(15, 0, 2, 16776960, "When I upgrade my Progress Bar Speed");
        addNewsType(0, 0, 0, 0, "FEATURE SHOP");
        addNewsType(14, 0, 2, 16776960, "When I buy a new feature");
        addNewsType(0, 0, 0, 0, "GARDEN");
        addNewsType(18, 6, 2, 10092441, "When I plant new trees");
        addNewsType(19, 6, 3, 10092441, "When I harvest my trees");
        addNewsType(20, 6, 4, 16711680, "When my trees expire");
        addNewsType(21, 6, 2, 10092441, "When I find Randomfruit");
        addNewsType(22, 6, 2, 10092441, "When I find seeds for Another Garden");
        addNewsType(23, 6, 2, 10092441, "When I use (Mega) Fertilizers");
        addNewsType(172, 6, 2, 10092441, "When I eat or sell Randomfruit");
        addNewsType(24, 6, 2, 16711680, "When I expand my Garden");
        addNewsType(0, 0, 0, 0, "BATTLE ARENA");
        addNewsType(25, 7, 3, 16776960, "When my Rank increases");
        addNewsType(26, 7, 3, 16776960, "When Robacon / Robroccoli\'s Rank increases");
        addNewsType(27, 7, 1, 16751001, "When a non-boss monster appears");
        addNewsType(28, 7, 2, 16751103, "When a boss monster appears");
        addNewsType(29, 7, 2, 16751001, "When a monster is defeated");
        addNewsType(30, 7, 2, 16751001, "When I receive Bestiary bonus");
        addNewsType(31, 7, 2, 16751001, "When I receive Invisible Ally bonus");
        addNewsType(32, 7, 3, 16776960, "When a Bestiary entry levels up");
        addNewsType(33, 7, 2, 13421772, "When my Invisible Ally gains EXP");
        addNewsType(34, 7, 3, 16776960, "When my Invisible Ally is mastered");
        addNewsType(35, 7, 3, 16776960, "When I tame an Invisible Ally");
        addNewsType(36, 7, 2, 16764057, "When I loot Superior Crafting Material");
        addNewsType(37, 7, 2, 16764057, "When I loot Unobtainium");
        addNewsType(185, 7, 2, 16777215, "When I loot Tukkonium");
        addNewsType(38, 7, 2, 16764057, "When I loot Enhancer Fragments");
        addNewsType(39, 7, 2, 16764057, "When I loot Chaotic Fragments of Chaos");
        addNewsType(40, 7, 2, 16764057, "When I loot To-be-Nerfed Gems");
        addNewsType(41, 7, 2, 16764057, "When I loot Bacon / Broccoli");
        addNewsType(42, 7, 2, 16764057, "When I loot Crystals of Rarity");
        addNewsType(43, 7, 2, 16764057, "When I loot Crystals of Ultimate Rarity");
        addNewsType(181, 7, 2, 16764057, "When I loot Regular Boost Potions");
        addNewsType(182, 7, 2, 16764057, "When I loot Mega Boost Potions");
        addNewsType(44, 7, 3, 16776960, "When I loot a new Ring");
        addNewsType(45, 7, 2, 16764057, "When I loot a Ring (replaced with Pixels)");
        addNewsType(46, 7, 3, 16776960, "When I loot a Recipe");
        addNewsType(47, 7, 3, 16776960, "When I loot a Skill Scroll or extra SP");
        addNewsType(48, 7, 3, 16776960, "When I loot a Skill Book");
        addNewsType(49, 7, 3, 14535680, "When I get a Weapon");
        addNewsType(50, 7, 3, 14535680, "When I get an Armor");
        addNewsType(51, 7, 3, 14535680, "When I get an Accessory");
        addNewsType(52, 7, 3, 14535680, "When I get an Enhancer");
        addNewsType(53, 7, 3, 14535680, "When I get a Potion");
        addNewsType(54, 7, 3, 14535680, "When I get an Outfit");
        addNewsType(170, 7, 3, 14535680, "When I get a Chip");
        addNewsType(55, 7, 3, 16711680, "When a Weapon is deleted due to full inventory");
        addNewsType(56, 7, 3, 16711680, "When an Armor is deleted due to full inventory");
        addNewsType(57, 7, 3, 16711680, "When an Accessory is deleted due to full inventory");
        addNewsType(58, 7, 3, 16711680, "When an Enhancer is deleted due to full inventory");
        addNewsType(59, 7, 3, 16711680, "When a Potion is deleted due to full inventory");
        addNewsType(60, 7, 3, 16711680, "When an Outfit is deleted due to full inventory");
        addNewsType(171, 7, 3, 16711680, "When a Chip is deleted due to full inventory");
        addNewsType(61, 7, 2, 13434624, "When I enhance an item");
        addNewsType(62, 7, 2, 13434624, "When my equipment levels up");
        addNewsType(63, 7, 3, 16711680, "When my equipment expires");
        addNewsType(64, 7, 2, 16776960, "When I purchase additional raid entries");
        addNewsType(65, 7, 3, 16711680, "When I get killed");
        addNewsType(168, 7, 3, 65535, "When I throw To-be-Nerfed Gems");
        addNewsType(66, 7, 3, 65535, "Other Battle Arena messages (recommended)");
        addNewsType(0, 0, 0, 0, "BUTTON MACHINE");
        addNewsType(67, 8, 2, 13421721, "When I get a Perfect click");
        addNewsType(68, 8, 2, 13421721, "When the button breaks");
        addNewsType(69, 8, 3, 16776960, "When I get an Explosion Crate from the Button");
        addNewsType(70, 8, 3, 16776960, "When I get an Awesome Crate from the Button");
        addNewsType(71, 8, 3, 16776960, "When I get a Chaos Crate from the Button");
        addNewsType(72, 8, 3, 16776960, "When I get a Legendary Box from the Button");
        addNewsType(73, 8, 2, 13421721, "When I repair the button");
        addNewsType(74, 8, 2, 16776960, "When I buy items from the Button Machine Shop");
        addNewsType(0, 0, 0, 0, "MONEY PRINTER");
        addNewsType(75, 9, 2, 16777164, "When some Coins are printed");
        addNewsType(76, 9, 2, 65280, "When some Green Coins are printed");
        addNewsType(77, 9, 2, 16776960, "When I upgrade the Money Printer");
        addNewsType(156, 9, 3, 16711680, "When Battery is low");
        addNewsType(157, 9, 4, 16711680, "When Battery runs out");
        addNewsType(0, 0, 0, 0, "ARCADE");
        addNewsType(78, 10, 2, 13421772, "[Pong] Hit");
        addNewsType(79, 10, 2, 15658734, "[Pong] Goal");
        addNewsType(80, 10, 2, 13421772, "[Avoidance] Avoided");
        addNewsType(81, 10, 2, 13421772, "[Math] Correct");
        addNewsType(82, 10, 2, 14540253, "[Math] Nice");
        addNewsType(83, 10, 2, 15658734, "[Math] Excellent");
        addNewsType(84, 10, 2, 13421772, "[Whack] Good");
        addNewsType(85, 10, 2, 14540253, "[Whack] Great");
        addNewsType(86, 10, 2, 15658734, "[Whack] Perfect");
        addNewsType(87, 10, 2, 15658734, "[Whack] Awesome");
        addNewsType(89, 10, 2, 15658734, "[Mind] Goal found");
        addNewsType(90, 10, 2, 13421772, "[Balance] Blocks destroyed");
        addNewsType(91, 10, 2, 14540253, "[Count] Stage cleared");
        addNewsType(92, 10, 2, 15658734, "[Count] Confidence bonus");
        addNewsType(97, 10, 3, 16777215, "Final result");
        addNewsType(161, 10, 3, 13382400, "When I gain Arcade 100k Medals");
        addNewsType(98, 10, 2, 16776960, "When I buy items from the Arcade shop");
        addNewsType(0, 0, 0, 0, "STADIUM");
        addNewsType(99, 11, 2, 10079487, "When I use items");
        addNewsType(100, 11, 2, 8961006, "When opponents use items");
        addNewsType(101, 11, 3, 13434879, "When I KO opponent in Death Match");
        addNewsType(102, 11, 3, 12316398, "When opponent KOs me in Death Match");
        addNewsType(103, 11, 3, 13434879, "Final result");
        addNewsType(104, 11, 2, 16776960, "When I buy items from the Stadium shop");
        addNewsType(0, 0, 0, 0, "TUKKUNFCG");
        addNewsType(105, 12, 3, 65535, "Final result");
        addNewsType(106, 12, 3, 16776960, "When my FCG Level increases");
        addNewsType(0, 0, 0, 0, "LOLMARKET");
        addNewsType(107, 13, 1, 16777113, "When prices change");
        addNewsType(108, 13, 2, 16777113, "When I purchase gems");
        addNewsType(109, 13, 2, 16777113, "When I sell gems");
        addNewsType(110, 13, 3, 16776960, "When LolMarket capacity increases");
        addNewsType(0, 0, 0, 0, "AWESOME ADVENTURES");
        addNewsType(111, 14, 2, 65535, "When I adventure");
        addNewsType(112, 14, 3, 65535, "When I gain Energy");
        addNewsType(113, 14, 2, 65535, "When my Reputation changes");
        addNewsType(114, 14, 2, 16776960, "When I buy items from the Awesome Shop");
        addNewsType(0, 0, 0, 0, "FISHING");
        addNewsType(115, 22, 2, 153, "When I fail to catch something");
        addNewsType(116, 22, 2, 3355596, "When I get a non-perfect catch");
        addNewsType(117, 22, 2, 6711039, "When I get a perfect catch");
        addNewsType(162, 22, 3, 13369599, "When I gain bonus LEGEND EXP");
        addNewsType(118, 22, 2, 10066431, "When I gain Mastery");
        addNewsType(119, 22, 3, 16776960, "When I open Treasure Boxes");
        addNewsType(120, 22, 2, 16776960, "When I raise Skill or Bucket Capacity");
        addNewsType(0, 0, 0, 0, "DRAGON OF WISDOM");
        addNewsType(121, 19, 1, 11184810, "When I feed the Dragon of Wisdom");
        addNewsType(122, 19, 3, 16776960, "When I receive Dragon Feeding Reward");
        addNewsType(123, 19, 3, 16776960, "When I claim Level Up Reward");
        addNewsType(0, 0, 0, 0, "MYSTERY BOXES");
        addNewsType(124, 17, 1, 10066329, "When I open empty Gambler\'s Boxes or get a refund");
        addNewsType(164, 17, 3, 13421568, "When I open Legendary Boxes");
        addNewsType(165, 17, 3, 13421568, "When I open Attendance Boxes");
        addNewsType(166, 17, 3, 13421568, "When I open Supply Crates");
        addNewsType(125, 17, 2, 16776960, "When I receive a Common prize");
        addNewsType(126, 17, 3, 15658496, "When I receive an Uncommon prize");
        addNewsType(127, 17, 3, 13421568, "When I receive a Rare prize");
        addNewsType(183, 17, 3, 13369599, "When I receive a Mega Boost Potion from Progress Boxes");
        addNewsType(0, 0, 0, 0, "CARDS");
        addNewsType(128, 18, 2, 14548736, "When I activate a Card");
        addNewsType(129, 18, 4, 16711680, "When a Card is deactivated");
        addNewsType(130, 18, 2, 14548736, "When I trade a Card for Supply Crates");
        addNewsType(0, 0, 0, 0, "CAREER");
        addNewsType(131, 0, 2, 39423, "When I gain \'Idler\' Career EXP");
        addNewsType(132, 6, 2, 39423, "When I gain \'Gardener\' Career EXP");
        addNewsType(133, 7, 2, 39423, "When I gain \'Fighter\' Career EXP");
        addNewsType(134, 7, 2, 39423, "When I gain \'Item Maker\' Career EXP");
        addNewsType(135, 8, 2, 39423, "When I gain \'Button Basher\' Career EXP");
        addNewsType(136, 10, 2, 39423, "When I gain \'Arcade Player\' Career EXP");
        addNewsType(137, 11, 2, 39423, "When I gain \'Racer\' Career EXP");
        addNewsType(138, 12, 2, 39423, "When I gain \'Card Player\' Career EXP");
        addNewsType(139, 13, 2, 39423, "When I gain \'Gem Trader\' Career EXP");
        addNewsType(140, 14, 2, 39423, "When I gain \'Adventurer\' Career EXP");
        addNewsType(141, 0, 2, 39423, "When I gain \'Pet Trainer\' Career EXP");
        addNewsType(142, 22, 2, 39423, "When I gain \'Fisher\' Career EXP");
        addNewsType(143, 0, 1, 39423, "When I receive Blessing Bonus");
        addNewsType(144, 0, 3, 16776960, "When a Career levels up");
        addNewsType(145, 0, 4, 16711680, "When a Career is deactivated");
        addNewsType(158, 0, 4, 16711680, "When a Career runs out of blessing time");
        addNewsType(0, 0, 0, 0, "PET");
        addNewsType(146, 0, 2, 16737792, "When my Pet gains Fullness");
        addNewsType(147, 0, 2, 16737792, "When my Pet gains Health");
        addNewsType(148, 0, 2, 16737792, "When my Pet gains Mana");
        addNewsType(149, 0, 3, 13382400, "When my Pet loses Fullness");
        addNewsType(150, 0, 3, 13382400, "When my Pet loses Health");
        addNewsType(151, 0, 3, 16711680, "When my Pet\'s Fullness is low");
        addNewsType(152, 0, 4, 16711680, "When my Pet\'s Health is low");
        addNewsType(153, 0, 4, 16711680, "When my Pet dies");
        addNewsType(154, 0, 3, 16776960, "When I use my Pet\'s Mad Skillz");
        addNewsType(173, 0, 2, 16711680, "Overfeeding warning");
        addNewsType(0, 0, 0, 0, "SIMULATION CYBORG");
        addNewsType(174, 0, 3, 12303359, "When you gain Cyborg Points");
        addNewsType(175, 0, 3, 12303359, "When Cyborg finishes an action");
        addNewsType(176, 0, 4, 16711680, "When Simulation Cyborg is paused");
        addNewsType(177, 0, 4, 16776960, "When Simulation Cyborg continues working");
        addNewsType(178, 0, 4, 16711680, "When Simulation Cyborg finishes working");
        addNewsType(179, 0, 2, 12303359, "When Simulation Cyborg gains EXP");
        addNewsType(180, 0, 3, 16776960, "When Simulation Cyborg levels up");
        addNewsType(0, 0, 0, 0, "TECHNICAL LIGHTS");
        addNewsType(160, 0, 4, 13421823, "Variable Tracking");

    }

    public override void _Process(double delta)
    {
        GetTree().ChangeSceneToFile("src/Loader/Loading6OutOf8.tscn");
    }

}
