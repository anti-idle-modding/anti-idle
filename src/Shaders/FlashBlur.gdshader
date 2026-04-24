shader_type canvas_item;
render_mode unshaded; 
uniform sampler2D SCREEN_TEXTURE: hint_screen_texture;

uniform float blurX : hint_range(0, 255) = 5;
uniform float blurY : hint_range(0, 255) = 5;

void fragment() {
	vec2 size = SCREEN_PIXEL_SIZE;
	
	float half_x = blurX * 0.5;
	float half_y = blurY * 0.5;
	int rx = int(ceil(half_x));
	int ry = int(ceil(half_y));
	
	vec4 color = vec4(0.0);
	float total = 0.0;
	for (int x = -rx; x <= rx; x++) {
		float wx = clamp(blurX - float(abs(x)) + 0.5, 0.0, 1.0);
		for (int y = -ry; y <= ry; y++) {
			float wy = clamp(blurY - float(abs(y)) + 0.5, 0.0, 1.0);
			float w = wx * wy;
			
			vec4 sample = texture(SCREEN_TEXTURE, SCREEN_UV + vec2(float(x), float(y)) * size);
			color.rgb += sample.rgb * sample.a * w;
			color.a += sample.a * w;
			total += w;
		}
	}
	
	float da = color.a / total;
	vec3 dr = (color.rgb / total) / da;
	
	// Emulate flash fixed point
	COLOR = floor(vec4(clamp(dr, 0.0, 1.0), da) * 255.0) / 255.0;
}