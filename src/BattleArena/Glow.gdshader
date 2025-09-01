shader_type spatial;
render_mode unshaded;

uniform float glow_power : hint_range(1.0, 100.0) = 30.0;
uniform vec3 color : source_color = vec3(1, 1, 1);

void fragment() {
    ALBEDO = color * glow_power;
}