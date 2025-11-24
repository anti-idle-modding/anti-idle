@tool
extends EditorScript

func _run():
	var output_path = "res://src/Common/InputConstants.cs"

	InputMap.load_from_project_settings()
	var actions = InputMap.get_actions()
	actions.sort()

	var sb = []
	sb.append("namespace AntiIdle.Common")
	sb.append("{")
	sb.append("\tpublic static class InputConstants")
	sb.append("\t{")
	
	for action in actions:
		var const_name = action.to_upper().replace(" ", "_")
		const_name = const_name.replace("-", "_")
		const_name = const_name.replace("/", "__")
		const_name = const_name.replace(".", "__")

		sb.append('\t\tpublic const string %s = "%s";' % [const_name, action])
	
	sb.append("\t}")
	sb.append("}")

	var file = FileAccess.open(output_path, FileAccess.WRITE)
	if file:
		file.store_string("\n".join(sb))
		file.close()
		print("✔ Generated C# constants at: %s" % output_path)
	else:
		push_error("❌ Failed to write: %s" % output_path)
