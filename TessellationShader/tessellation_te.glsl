#version 430 

//layout (triangles, equal_spacing, ccw) in;
//Try some of these other options
layout (triangles, fractional_odd_spacing, ccw) in;
//layout (triangles, fractional_even_spacing, ccw) in;


void main()
{
	const float u = gl_TessCoord[0];
	const float v = gl_TessCoord[1];
	const float w = gl_TessCoord[2];

	const vec4 p0 = gl_in[0].gl_Position;
	const vec4 p1 = gl_in[1].gl_Position;
	const vec4 p2 = gl_in[2].gl_Position;

	gl_Position = u*p0 + v*p1 + w*p2;
}
