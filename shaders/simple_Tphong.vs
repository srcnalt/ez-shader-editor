precision highp float;

uniform mat4 u_model;
uniform mat4 u_mvp;

attribute vec3 a_vertex;
attribute vec3 a_normal;
attribute vec2 a_coord;

varying vec3 v_normal; // we want to pass these values interpolated
varying vec2 v_coord;


void main()
{
        v_coord = a_coord;
	v_normal = normalize((u_model * vec4(a_normal,0.0)).xyz); 
	gl_Position = u_mvp * vec4(a_vertex,1.0); // world pos of the vertex
}