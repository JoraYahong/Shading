#version 330

in vec3 vertex_position;
in vec3 vertex_normal;


out vec3 FragPos;
out vec3 normal;


uniform mat4 view;
uniform mat4 proj;
uniform mat4 model;

void main(){

	FragPos = vec3(model * vec4(vertex_position, 1.0));
    normal = mat3(transpose(inverse(model))) * vertex_normal;  
    gl_Position = proj * view * vec4(FragPos, 1.0);
}


  