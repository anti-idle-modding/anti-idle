shader_type canvas_item;

uniform vec4 color_start : source_color = vec4(1.0, 1.0, 0.0, 0.302); // top color
uniform vec4 color_end   : source_color = vec4(1.0, 1.0, 0.0, 0.8);   // bottom color

void fragment() {
    float t = UV.y; // vertical blend: top → bottom
    COLOR = mix(color_start, color_end, t);
}