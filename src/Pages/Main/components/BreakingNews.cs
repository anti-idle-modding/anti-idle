using System;
using Godot;

// MATCH: DefineSprite_8223-frame_1-DoAction.as
public partial class BreakingNews : Control
{
    [Export]
    public RichTextLabel NewsViewer { get; set; }
    public int tempFeature { get; set; }
    public int curTab { get; set; } = 5;

    // Called when the node enters the scene tree for the first time.
    public override void _Ready() { }

    // Called every frame. 'delta' is the elapsed time since the previous frame.
    public override void _Process(double delta)
    {
        if (_root.house._currentframe != tempFeature)
        {
            _root.updateBreakNews = 1;
            // todo: house frame is hardcoded to 7 for battleArena. find a way to update this when scene changes
            tempFeature = _root.house._currentframe;
        }
        if (_root.updateBreakNews == 1)
        {
            if (curTab <= 4)
            {
                NewsViewer.Clear();
                // Start the BBCode table
                NewsViewer.AppendText("[table=2]\n"); // 2 columns: timestamp + message

                var b = 1;
                while (b <= 4)
                {
                    var c = b + _root.breakoffset;
                    var stamp = (string)_root.news[$"X{curTab}breakStamp{c}"];
                    var news = (string)_root.news[$"X{curTab}breakNews{c}"];
                    var color = (int)_root.news[$"X{curTab}breakColor{c}"];

                    // Convert AS2 textColor → BBCode color tag
                    string stampColored = $"[color=#{color:X6}]{stamp}[/color]";
                    string newsColored = $"[color=#{color:X6}]{news}[/color]";

                    // Add row to table
                    var debugText = $"[cell]{stampColored}[/cell][cell]{newsColored}[/cell]\n";
                    NewsViewer.AppendText(debugText);
                    b++;
                }
                // End table
                NewsViewer.AppendText("[/table]");
            }
            else
            {
                var fr = _root.house._currentframe;
                var b = 1;
                NewsViewer.Clear();
                // Start the BBCode table
                NewsViewer.AppendText("[table=2]\n"); // 2 columns: timestamp + message

                while (b <= 4)
                {
                    var c = b + _root.breakoffset;

                    var stamp = (string)_root.news[$"F{fr}breakStamp{c}"];
                    var news = (string)_root.news[$"F{fr}breakNews{c}"];
                    var color = (int)_root.news[$"F{fr}breakColor{c}"];

                    //GD.Print(
                    //$"newsString: `{newsString}`. colorNumber: `{colorNumber:X6}`  stampString: `{stampString}`"
                    //);
                    // Convert AS2 textColor -> BBCode color tag
                    string stampColored = $"[color=#{color:X6}]{stamp}[/color]";
                    string newsColored = $"[color=#{color:X6}]{news}[/color]";

                    // Add row to table
                    var debugText = $"[cell]{stampColored}[/cell][cell]{newsColored}[/cell]\n";
                    NewsViewer.AppendText(debugText);
                    //GD.Print($"Text to add 4: `{debugText}`");
                    b++;
                }
                // End table
                NewsViewer.AppendText("[/table]");
            }
            _root.updateBreakNews = 0;
        }
    }

    public override void _EnterTree()
    {
        if (_root.saveGlobal.defTab == 0)
        {
            _root.saveGlobal.defTab = 2;
        }
        var curTab = _root.saveGlobal.defTab;
        _root.breakoffset = 0;

        if (curTab <= 4)
        {
            NewsViewer.Clear();
            // Start the BBCode table
            NewsViewer.AppendText("[table=2]\n"); // 2 columns: timestamp + message

            var b = 1;
            while (b <= 4)
            {
                var c = b + _root.breakoffset;
                var stamp = (string)_root.news[$"X{curTab}breakStamp{c}"];
                var news = (string)_root.news[$"X{curTab}breakNews{c}"];
                var color = (int)_root.news[$"X{curTab}breakColor{c}"];
                // Convert AS2 textColor → BBCode color tag
                string stampColored = $"[color=#{color:X6}]{stamp}[/color]";
                string newsColored = $"[color=#{color:X6}]{news}[/color]";

                // Add row to table
                NewsViewer.AppendText($"[cell]{stampColored}[/cell][cell]{newsColored}[/cell]\n");

                b++;
            }
            // End table
            NewsViewer.AppendText("[/table]");
        }
        else if (curTab == 5)
        {
            NewsViewer.Clear();
            // Start the BBCode table
            NewsViewer.AppendText("[table=2]\n"); // 2 columns: timestamp + message

            var fr = _root.house._currentframe;
            var b = 1;
            while (b <= 4)
            {
                var c = b + _root.breakoffset;
                // Pull values from your data source
                var stamp = (string)_root.news[$"F{fr}breakStamp{c}"];
                var news = (string)_root.news[$"F{fr}breakNews{c}"];
                var color = (int)_root.news[$"F{fr}breakColor{c}"];

                // Convert AS2 textColor → BBCode color tag
                string stampColored = $"[color=#{color:X6}]{stamp}[/color]";
                string newsColored = $"[color=#{color:X6}]{news}[/color]";

                // Add row to table
                NewsViewer.AppendText($"[cell]{stampColored}[/cell][cell]{newsColored}[/cell]\n");
                b++;
            }
            // End table
            NewsViewer.AppendText("[/table]");
        }
        tempFeature = 0;
    }
}
