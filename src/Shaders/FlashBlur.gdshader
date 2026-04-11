shader_type canvas_item;

void fragment() {
	// Comment!
	float r = -0.2;
	vec4 shadow = texture(TEXTURE, UV + vec2(-r, -r));
	shadow.r = 0.;
	shadow.b = 0.;
	shadow.g = 0.;
	vec4 base = texture(TEXTURE, UV);
	COLOR = base + shadow;
}