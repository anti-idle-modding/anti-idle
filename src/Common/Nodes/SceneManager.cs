using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Godot;

namespace AntiIdle.Common.Nodes;

[GlobalClass]
[Tool]
public partial class SceneManager : Control
{
    /// <summary>
    /// The currently loaded scene.
    /// Only one scene can be active at a time.
    /// </summary>
    private Node current;
#pragma warning disable IDE1006 // Naming Styles
    public int? _currentFrame => (int?)current.GetMeta("Frame");
#pragma warning restore IDE1006 // Naming Styles

    public string currentScene;

    /// <summary>
    /// A list of all scenes managed.
    /// </summary>
    [Export]
    public Godot.Collections.Dictionary<string, PackedScene> scenes;

    /// <summary>
    /// An optional, default scene. If specified, the scene manager
    /// will load this scene when it's dropped into the tree.
    /// </summary>
    [Export]
    public string defaultScene
    {
        get;
        set
        {
            field = value;
            if (Engine.IsEditorHint())
            {
                Unload();
                Show(field);
            }
        }
    }

    /// <summary>
    /// Shows one of this SceneManager's scenes.
    /// The name corresponds to the name set in SceneData.
    /// </summary>
    public void Show(string sceneName)
    {
        if (!scenes.TryGetValue(sceneName, out var packedScene))
        {
            GD.PushWarning(
                $"Tried to load scene {sceneName}, but no such scene was found. Currently managed scenes: {string.Join(", ", scenes)}"
            );
            return;
        }

        var scene = packedScene.Instantiate();
        if (scene is SceneData sceneData)
            sceneData.m = this;
        Unload();
        current = scene;
        AddChild(current);
    }

    /// <summary>
    /// QueueFrees the currently active scene.
    /// </summary>
    public void Unload()
    {
        if (current == null)
            return;
        current.QueueFree();
        current = null;
    }

    public override void _EnterTree()
    {
        if (!Engine.IsEditorHint() && defaultScene != null)
            Show(defaultScene);
    }
}
