using System.Collections.Generic;
using System.Linq;
using Godot;

namespace AntiIdle.Common.Nodes;

[GlobalClass]
public partial class SceneManager : Control
{
    /// <summary>
    /// A list of all scenes managed.
    /// Can only load one scene at a time.
    /// </summary>
    Dictionary<string, SceneData> scenes = [];
    /// <summary>
    /// The currently loaded scene.
    /// </summary>
    SceneData current;

    void DirContents(string path)
    {
        using var dir = DirAccess.Open(path);
        if (dir == null)
        {
            GD.PrintErr($"DirAccess.Open('{path}') returned null");
            return;
        }
        dir.ListDirBegin();
        var filename = dir.GetNext();
        while (filename != "")
        {
            // Try loading all the scenes in the given path.
            if (filename.EndsWith(".tscn"))
            {
                GD.Print(filename);
                var packedScene = GD.Load<PackedScene>(path + "/" + filename);
                // If a scene is loadable (contains some SceneData)
                // we can manage it.
                // A SceneData is a simple data wrapper describing the scene,
                // and giving it a name, for use with SceneManager methods.
                if (packedScene.Instantiate() is SceneData sceneData)
                {
                    scenes[sceneData.sceneName] = sceneData;
                }
            }
            filename = dir.GetNext();
        }
    }

    [Export]
    public string scenesFolder;

    /// <summary>
    /// Shows one of this SceneManager's scenes.
    /// The name corresponds to the name set in SceneData.
    /// </summary>
    public void Show(string sceneName)
    {
        if (!scenes.TryGetValue(sceneName, out var sceneData))
        {
            GD.PrintErr($"Tried to load scene {sceneName}, but no such scene was found. Currently managed scenes: {string.Join(", ", scenes.Keys.ToList())}");
        }
        current = sceneData;
        sceneData.m = this;
        AddChild(current);
    }

    /// <summary>
    /// Unloads and hides the current scene.
    /// </summary>
    public void Unload()
    {
        if (current == null)
        {
            GD.PrintErr($"Tried to Unload(), but no currently loaded scene.");
            return;
        }
        RemoveChild(current);
        current = null;
    }

    public override void _EnterTree()
    {
        DirContents(scenesFolder);
    }
}