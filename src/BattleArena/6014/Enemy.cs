using System;
using AntiIdle.Common.Nodes;
using Godot;

public partial class Enemy : FlashNode2D
{
	public double enemyID { get; set; }
	public double approach { get; set; }
	public double poison { get; set; }
	public double weaken { get; set; }
	public double blind {get; set; }
	public double allyDownCount1 { get; set; }
	public double allyDownCount2 { get; set; }
	public double allyDownCount3 { get; set; }
	public double allyDownCount4 { get; set; }
	public double stun { get; set; }
	public double lifespan { get; set; }

	// copied from EnemyData.cs
	public double level;
	public double speed;
	public double attack;
	public double defense;
	public double accuracy;
	public double evasion;
	public double hp;
	public double exp;
	public double coin;
	public double pixel;
	public string name;
	public string element;
	public bool boss;
	public double evolve;
	public double heal;
	public bool zombie;
	public double rangeDamage;
	public double explode;
	public double explodeDamage;
	public double rampagePct;
	public string skill;
	public double skillLevel;
	public string art;
	public string loc;
	public string allyPassive1;
	public double allyPassive1X;
	public string allyPassive2;
	public double allyPassive2X;
	public string allyPassive3;
	public double allyPassive3X;
	public string allyActive1;
	public double allyActive1X;
	public double allyActive1Y;
	public double allyActive1Z;
	public string allyActive2;
	public double allyActive2X;
	public double allyActive2Y;
	public double allyActive2Z;
	public string allyActive3;
	public double allyActive3X;
	public double allyActive3Y;
	public double allyActive3Z;
	// Called when the node enters the scene tree for the first time.
	public override void _Ready() { }

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta) { }
}
