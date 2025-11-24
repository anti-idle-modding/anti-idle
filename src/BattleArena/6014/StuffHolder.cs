using System;
using Godot;
using Godot.Collections;

#nullable enable
public partial class StuffHolder : Node2D
{
    // Called when the node enters the scene tree for the first time.
    public override void _Ready() { }

    // Called every frame. 'delta' is the elapsed time since the previous frame.
    public override void _Process(double delta) { }

    /// <summary>
    /// FLASH compatibility: https://open-flash.github.io/mirrors/as2-language-reference/MovieClip.html#attachMovie()
    /// </summary>
    /// <param name="id"></param>
    /// <param name="name"></param>
    /// <param name="depth">depth/z-index Relative to this node</param>
    /// <param name="init"></param>
    public void attachMovie(string id, string name, double depth, dynamic? init = null)
    {
        var scene = ResourceLoader.Load<PackedScene>(id);
        // Check if the resource loaded successfully
        if (scene == null)
        {
            GD.PrintErr($"Failed to load scene at path: {id}");
            return;
        }
        // 2. Instantiate the packed scene to create a new instance of the node tree
        Node2D newNode2DInstance = scene.Instantiate<Node2D>();
        // Check if the instantiation was successful and if it's the correct type
        if (newNode2DInstance == null)
        {
            GD.PrintErr("Failed to instantiate the scene or it is not a Node2D.");
            return;
        }
        newNode2DInstance.Name = name;
        newNode2DInstance.ZIndex = (int)depth;
        newNode2DInstance.ZAsRelative = true;

        if (init is not null)
        {
            foreach (var prop in ((object)init).GetType().GetProperties())
            {
                var propName = prop.Name;
                var value = prop.GetValue(init);
                newNode2DInstance.Set(propName, value);
            }
        }
        // 3. Add the new instance as a child of the current node (or another parent node in the tree)
        AddChild(newNode2DInstance);

        GD.Print("Successfully loaded and added a new Node2D instance at runtime.");

        //stuffHolder.attachMovie("damagePop", "damagePop" + _root.summonCount, _root.antiLag,{ _x: xLoc,_y: yLoc + 10,damageNum: num,damageColor: col});
    }
}

public record AttachMovieInit
{
    public float _x { get; set; }
    public float _y { get; set; }
    public double damageNum { get; set; }
    public double damageCol { get; set; }
}
