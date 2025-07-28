
using Godot;

namespace AntiIdle.Common.Nodes;

[GlobalClass]
public partial class SceneData : Control
{
    public SceneManager m;

    public void Show(string sceneName)
    {
        m.Show(sceneName);
    }


    public void Unload()
    {
        m.Unload();
    }
}