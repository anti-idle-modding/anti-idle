namespace AntiIdle.Common.Flash;

using Godot;

public static class Version
{
    public static string getVersion()
    {
        var versionInfo = Engine.GetVersionInfo();
        return $"{versionInfo["major"]}.{versionInfo["minor"]}.{versionInfo["patch"]}";
    }
}
