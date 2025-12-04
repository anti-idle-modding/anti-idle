shader_type canvas_item;
render_mode blend_premul_alpha;

uniform float radius = 5.0;
uniform float amount = 0.25;

// Outline color (solid yellow)
uniform vec3 outline_color = vec3(1.0, 1.0, 0.0);
uniform float outline_thickness = 1.0;

void fragment() {
    vec2 ps = TEXTURE_PIXEL_SIZE;
    vec4 col = texture(TEXTURE, UV);

    // ---------------------------
    // 1. CHECK FOR OUTLINE
    // ---------------------------
    float outline = 0.0;

    // Check 8 neighboring pixels for alpha > 0
    outline += texture(TEXTURE, UV + vec2(-outline_thickness, 0.0) * ps).a;
    outline += texture(TEXTURE, UV + vec2(outline_thickness, 0.0) * ps).a;
    outline += texture(TEXTURE, UV + vec2(0.0, -outline_thickness) * ps).a;
    outline += texture(TEXTURE, UV + vec2(0.0, outline_thickness) * ps).a;

    outline += texture(TEXTURE, UV + vec2(-outline_thickness, -outline_thickness) * ps).a;
    outline += texture(TEXTURE, UV + vec2(-outline_thickness, outline_thickness) * ps).a;
    outline += texture(TEXTURE, UV + vec2(outline_thickness, -outline_thickness) * ps).a;
    outline += texture(TEXTURE, UV + vec2(outline_thickness, outline_thickness) * ps).a;

    bool is_outline_pixel = (col.a == 0.0 && outline > 0.0);

    // ---------------------------
    // 2. BLUR GLOW (your original)
    // ---------------------------
    float r = radius;
    vec4 glow = col;

    glow += texture(TEXTURE, UV + vec2(-r, -r) * ps);
    glow += texture(TEXTURE, UV + vec2(-r, 0.0) * ps);
    glow += texture(TEXTURE, UV + vec2(-r, r) * ps);
    glow += texture(TEXTURE, UV + vec2(0.0, -r) * ps);
    glow += texture(TEXTURE, UV + vec2(0.0, r) * ps);
    glow += texture(TEXTURE, UV + vec2(r, -r) * ps);
    glow += texture(TEXTURE, UV + vec2(r, 0.0) * ps);
    glow += texture(TEXTURE, UV + vec2(r, r) * ps);

    r *= 2.0;
    glow += texture(TEXTURE, UV + vec2(-r, -r) * ps);
    glow += texture(TEXTURE, UV + vec2(-r, 0.0) * ps);
    glow += texture(TEXTURE, UV + vec2(-r, r) * ps);
    glow += texture(TEXTURE, UV + vec2(0.0, -r) * ps);
    glow += texture(TEXTURE, UV + vec2(0.0, r) * ps);
    glow += texture(TEXTURE, UV + vec2(r, -r) * ps);
    glow += texture(TEXTURE, UV + vec2(r, 0.0) * ps);
    glow += texture(TEXTURE, UV + vec2(r, r) * ps);

    glow /= 17.0;
    glow *= amount;

    // force glow to yellow
    glow.rgb = outline_color * glow.a;

    // premultiply sprite color
    col.rgb *= col.a;

    // --------------------------------------------
    // 3. FINAL OUTPUT: sprite + glow + outline
    // --------------------------------------------
    if (is_outline_pixel) {
        // Solid 1px outline (fully opaque)
        COLOR = vec4(outline_color, 1.0);
    } else {
        // Normal sprite + glow
        COLOR = col;
    }
}