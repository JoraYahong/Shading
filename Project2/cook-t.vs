#version 330 core

in vec3 vertex_position;
in vec3 vertex_normal;


out vec3 WorldPos;
out vec3 Normal;

uniform mat4 projection;
uniform mat4 view;
uniform mat4 model;

void main()
{

    WorldPos = vec3(model * vec4(vertex_position, 1.0));
    Normal = mat3(model) * vertex_normal;   
	
    gl_Position =  projection * view * vec4(WorldPos, 1.0);
}