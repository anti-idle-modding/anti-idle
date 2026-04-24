shader_type canvas_item;
render_mode unshaded; 
uniform sampler2D SCREEN_TEXTURE: hint_screen_texture;

uniform vec4 glow_color : source_color = vec4(1.0, 0.0, 0.0, 1.0);
uniform float strength : hint_range(0.0, 255.0) = 2.0;
uniform float blurX : hint_range(0, 255) = 5;
uniform float blurY : hint_range(0, 255) = 5;
uniform bool inner = false;
uniform bool knockout = false;
uniform bool composite_source = true;

void fragment() {
	vec2 size = SCREEN_PIXEL_SIZE;
	float stage = 650.0;
	vec2 mult = 1.0 / (SCREEN_PIXEL_SIZE * stage);
	
	float logicalBlurX = blurX * mult.x;
	float logicalBlurY = blurY * mult.y;
	
	float half_x = logicalBlurX * 0.5;
	float half_y = logicalBlurY * 0.5;
	int rx = int(ceil(half_x));
	int ry = int(ceil(half_y));
	
	float blur_a = 0.0;
	float total = 0.0;
	for (int x = -rx; x <= rx; x++) {
		float wx = clamp(logicalBlurX - float(abs(x)) + 0.5, 0.0, 1.0);
		for (int y = -ry; y <= ry; y++) {
			float wy = clamp(logicalBlurY - float(abs(y)) + 0.5, 0.0, 1.0);
			float w = wx * wy;
			vec4 sample = texture(SCREEN_TEXTURE, SCREEN_UV + vec2(float(x), float(y)) * size);
			blur_a += sample.a * w;
			total += w;
		}
	}
	blur_a /= total;
	
	// Emulate flash fixed point
	blur_a = floor((blur_a) * 255.0) / 255.0;
	
	vec4 dest = texture(SCREEN_TEXTURE, SCREEN_UV);
	vec4 color = vec4(glow_color.rgb, 1.0);
	if (inner) {
		float alpha = glow_color.a * clamp((1.0 - blur_a) * strength, 0.0, 1.0);
		if (knockout) {
			color = color * alpha * dest.a;
		} else if (composite_source) {
			color = color * alpha * dest.a + dest * (1.0 - alpha);
		} else {
			color = color * alpha * dest.a;
		}
	} else {
		float alpha = glow_color.a * clamp(blur_a * strength, 0.0, 1.0);
		if (knockout) {
			color = color * alpha * (1.0 - dest.a);
		} else if (composite_source) {
			color = color * alpha * (1.0 - dest.a) + dest; 
		} else {
			color = color * alpha;
		}
	}
	
	COLOR = floor(clamp(color, 0.0, 1.0) * 255.0) / 255.0;
}