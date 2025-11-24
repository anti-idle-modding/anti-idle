using Godot;
using System;

public partial class EnemyImmune : AnimatedSprite2D
{
	public int fr { get; set; }
	public double timeZ { get; set; }
	public double timeX { get; set; }
	public double timeC { get; set; }
    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
	{
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}
}
