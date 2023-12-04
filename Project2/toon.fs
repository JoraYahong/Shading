#version 330

out vec4 FragColor;

in vec3 FragPos;  
in vec3 normal;  

uniform vec3 lightPos; 
uniform vec3 lightColor;


void main()
{
	float intensity;
	vec4 color;
    vec3 norm = normalize(normal);
    vec3 lightDir = normalize(lightPos - FragPos);
	//calculate the cos between light source and normal to get the intensity
	intensity = dot(lightDir,norm);

	if (intensity > 0.95)
		color = vec4(0.4,0.8,1.0,1.0);
	else if (intensity > 0.65)
		color = vec4(0.3,0.6,0.8,1.0);
	else if (intensity > 0.2)
		color = vec4(0.2,0.4,0.6,1.0);
	else
		color = vec4(0.1,0.2,0.4,1.0);

    FragColor = color;
} 