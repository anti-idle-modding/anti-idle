using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Godot;

namespace AntiIdle.Common.Nodes;

[GlobalClass]
public partial class SceneManager : Control
{
    /// <summary>
    /// The currently loaded scene.
    /// Only one scene can be active at a time.
    /// </summary>
    private SceneData current;
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
    public string defaultScene;

    /// <summary>
    /// Shows one of this SceneManager's scenes.
    /// The name corresponds to the name set in SceneData.
    /// </summary>
    public void Show(string sceneName)
    {
        if (!scenes.TryGetValue(sceneName, out var packedScene))
            GD.PrintErr(
                $"Tried to load scene {sceneName}, but no such scene was found. Currently managed scenes: {string.Join(", ", scenes)}"
            );
        // If a scene is loadable (contains some SceneData)
        // we can manage it.
        // A SceneData is a simple data wrapper describing the scene,
        // and giving it a name, for use with SceneManager methods.
        if (packedScene.Instantiate() is SceneData sceneData)
        {
            Unload();
            current = sceneData;
            sceneData.m = this;
            AddChild(current);
        }
        else
        {
            GD.PrintErr($"Failed to instanciate {sceneName}. Make sure it's a SceneData node.");
        }
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
        if (defaultScene != null)
            Show(defaultScene);
    }
}
