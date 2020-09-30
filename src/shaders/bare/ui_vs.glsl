#version 330

uniform vec4 ui_vs_params[4];
out vec2 frag_texture_coord;
layout(location = 1) in vec2 texture_coord;
layout(location = 0) in vec3 position;

void main()
{
    frag_texture_coord = texture_coord;
    gl_Position = mat4(ui_vs_params[0], ui_vs_params[1], ui_vs_params[2], ui_vs_params[3]) * vec4(position, 1.0);
}

