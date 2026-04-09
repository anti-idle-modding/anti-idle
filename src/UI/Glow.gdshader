shader_type canvas_item;
render_mode unshaded;

uniform float original_alpha : hint_range(0.0, 1.0) = 1.0;
uniform vec4 drop_shadow_color : source_color = vec4(0.0, 0.0, 0.0, 0.5);
uniform float shadow_offset_x : hint_range(-0.3, 0.3) = 0.05;
uniform float shadow_offset_y : hint_range(-0.3, 0.3) = 0.05;
uniform vec2 shadow_scale = vec2(1.0, 1.0);
uniform float shadow_rotation : hint_range(0.0, 360.0) = 0.0;
uniform vec2 rotation_pivot = vec2(0.5, 0.5);

uniform float shadow_blur_strength : hint_range(0.0, 20.0) = 2.0;
uniform int shadow_blur_samples : hint_range(3, 8, 1) = 4;
uniform float _blur_scale_factor = 1.0;

uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, repeat_disable, filter_linear_mipmap;

vec2 scale_uv(vec2 uv, vec2 scale) {
    return (uv - rotation_pivot) / scale + rotation_pivot;
}

vec2 rotate_uv(vec2 uv, float angle, vec2 aspect_correction) {
    uv -= rotation_pivot;
    uv *= aspect_correction; // Correct aspect ratio before rotation
    float s = sin(angle);
    float c = cos(angle);
    vec2 rotated = vec2(
        uv.x * c - uv.y * s,
        uv.x * s + uv.y * c
    );
    rotated /= aspect_correction; // Restore original proportions
    return rotated + rotation_pivot;
}

vec4 get_rotated_shadow(vec2 uv, float rotation, vec2 aspect) {
    vec2 scaled_uv = scale_uv(uv, shadow_scale);
    vec2 corrected_uv = rotate_uv(scaled_uv, rotation, aspect);
    return texture(SCREEN_TEXTURE, corrected_uv);
}

vec4 apply_shadow_blur(vec2 uv, vec2 pixel_size, vec2 offset, float rotation, vec2 aspect) {
    float samples = float(pow(2.0, float(shadow_blur_samples)));
	float scaled_blur_strength = shadow_blur_strength * _blur_scale_factor;
    float layer_increment = scaled_blur_strength / samples;
    float angle_increment = TAU / samples;

    // Base rotated shadow
    vec4 shadow_base = get_rotated_shadow(uv - offset, rotation, aspect);
    vec4 color = vec4(drop_shadow_color.rgb, drop_shadow_color.a * shadow_base.a);

    if (scaled_blur_strength <= 0.0) return color;

    // Blur with aspect-corrected rotation
    for (float d = layer_increment; d <= scaled_blur_strength; d += layer_increment) {
        vec4 layer_color = vec4(0.0);
        for (float t = 0.0; t < TAU; t += angle_increment) {
            vec2 sample_uv = uv - offset + vec2(cos(t), sin(t)) * d * pixel_size;
            vec4 sample = get_rotated_shadow(sample_uv, rotation, aspect);
            layer_color += vec4(drop_shadow_color.rgb, drop_shadow_color.a * sample.a);
        }
        layer_color /= samples;
        float weight = 1.0 - sqrt(d / scaled_blur_strength);
        color = mix(color, layer_color, weight);
    }

    return color;
}

void fragment() {
    vec2 pixel_size = SCREEN_PIXEL_SIZE;
    vec2 uv = SCREEN_UV;
    float rotation = radians(shadow_rotation);
    vec2 offset = vec2(shadow_offset_x, shadow_offset_y);
    
    // Calculate aspect ratio correction (width/height, height/width)
    vec2 aspect = vec2(1.0, SCREEN_PIXEL_SIZE.x/SCREEN_PIXEL_SIZE.y);

    vec4 original = texture(SCREEN_TEXTURE, uv);
    vec4 shadow = apply_shadow_blur(uv, pixel_size, offset, rotation, aspect);
	
	original.a *= original_alpha; // Alpha modulation affects both original and shadow
	shadow.a *= original_alpha;
	
	COLOR = mix(shadow, original, original.a);
}