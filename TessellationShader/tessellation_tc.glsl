#version 430

uniform float slider[4];

layout (vertices = 3) out;  //number of output verts of the tess. control shader

void main()
{

	//Pass-through: just copy input vertices to output
	gl_out[gl_InvocationID].gl_Position = gl_in[gl_InvocationID].gl_Position;

	//set tessellation levels
	gl_TessLevelOuter[0] = slider[0];
	gl_TessLevelOuter[1] = slider[1];
	gl_TessLevelOuter[2] = slider[2];

	gl_TessLevelInner[0] = slider[3];
}
