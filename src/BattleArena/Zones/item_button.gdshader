shader_type canvas_item;

// Multipliers (0–1 range typical)
uniform vec3 color_mult = vec3(1.0, 1.0, 1.0);
uniform float alpha_mult = 1.0;

// Offsets (0–1 range typical; Flash uses 0–255)
uniform vec3 color_offset = vec3(0.0, 0.0, 0.0);
uniform float alpha_offset = 0.0;

void fragment() {
    vec4 c = texture(TEXTURE, UV);

    // Apply multipliers
    c.rgb *= color_mult;
    c.a *= alpha_mult;

    // Apply offsets
    c.rgb += color_offset;
    c.a += alpha_offset;

    COLOR = c;
}