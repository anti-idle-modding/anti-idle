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
    Node current;
#pragma warning disable IDE1006 // Naming Styles
    public int? _currentFrame => (int?)current.GetMeta("Frame");
#pragma warning restore IDE1006 // Naming Styles

    public string currentScene;

    /// <summary>
    /// A list of all scenes managed.
    /// </summary>
    [Export]
    public Godot.Collections.Dictionary<string, PackedScene> scenes = [];

    /// <summary>
    /// An optional, default scene. If specified, the scene manager
    /// will load this scene when it's dropped into the tree.
    /// </summary>
    [Export]
    public string defaultScene;

    public void gotoAndStop(int frameNumber)
    {
        Show(frameNumber.ToString());
    }

    public void gotoAndStop(double frameNumber)
    {
        gotoAndStop((int)frameNumber);
    }

    /// <summary>
    /// Shows one of this SceneManager's scenes.
    /// The name corresponds to the name set in SceneData.
    /// </summary>
    public void Show(string sceneName)
    {
        if (!scenes.TryGetValue(sceneName, out var packedScene))
        {
            GD.PrintErr(
                $"Tried to load scene {sceneName}, but no such scene was found. Currently managed scenes: {string.Join(", ", scenes)}"
            );
        }
        Unload();
        // If a scene is loadable (contains some SceneData)
        // we can manage it.
        // A SceneData is a simple data wrapper describing the scene,
        // and giving it a name, for use with SceneManager methods.
        current = packedScene.Instantiate();
        if (current is SceneData sceneData)
        {
            sceneData.m = this;
        }
        currentScene = sceneName;
        if (int.TryParse(sceneName, out int frameNum))
        {
            current.SetMeta("Frame", frameNum);
        }
        AddChild(current);
    }

    /// <summary>
    /// QueueFrees the currently active scene.
    /// </summary>
    public void Unload()
    {
        if (current == null)
        {
            return;
        }
        current.QueueFree();
        current = null;
    }

    public override void _EnterTree()
    {
        if (defaultScene != null)
        {
            Show(defaultScene);
        }
    }
}
