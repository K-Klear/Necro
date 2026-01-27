#version 140

in highp vec4 var_position;
in mediump vec3 var_normal;
in mediump vec2 var_texcoord0;

out vec4 out_fragcolour;

uniform mediump sampler2D tex0;

//uniform fs_uniforms
//{};

void main()
{
    // Pre-multiply alpha since all runtime textures already are
    vec4 colour = texture(tex0, var_texcoord0.xy);
    //float min_val = min(min(colour.x, colour.y), colour.z);
    //float max_val = max(max(colour.x, colour.y), colour.z);
    //colour = colour + 1 - 5 * max_val;
    //colour = clamp(colour, 0, 0.7);
    out_fragcolour = colour;
}

