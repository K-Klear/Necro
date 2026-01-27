#version 140

in mediump vec2 var_texcoord0;
in mediump vec3 var_normal;
in highp vec3 var_position_world;

out vec4 out_fragColor;

uniform mediump sampler2D tex0;
uniform mediump sampler2D tex_light;
uniform fs_uniforms
{
    mediump vec4 tint_1;
    mediump vec4 light_1;
    mediump vec4 tint_2;
    mediump vec4 light_2;
};

void main()
{
    vec4 colour = texture(tex0, var_texcoord0.xy);
    if (colour.w < 0.8)
    {
        discard;
    }
    vec4 lightmap = texture(tex_light, var_texcoord0.xy);

    vec3 light_dir_1 = vec3(light_1.xyz - var_position_world);
    vec3 cr = cross(normalize(var_normal), vec3(0, 0, 1));
    float d = dot(normalize(light_dir_1), cr);
    float light_dist_1 = length(light_dir_1) / light_1.w;
    light_dist_1 = 1.0 - clamp(light_dist_1, 0, 1);
    vec3 light_final_1 = lightmap.x * max(-d, 0) * tint_1.xyz + lightmap.z * max(d, 0) * tint_1.xyz;

    vec3 light_dir_2 = vec3(light_2.xyz - var_position_world);
    float d_2 = dot(normalize(light_dir_2), cr);
    float light_dist_2 = length(light_dir_2) / light_2.w;
    light_dist_2 = 1.0 - clamp(light_dist_2, 0, 1);
    vec3 light_final_2 = lightmap.x * max(-d_2, 0) * tint_2.xyz + lightmap.z * max(d_2, 0) * tint_2.xyz;
    
    colour.xyz = colour.xyz * 0.25 + light_final_1 * light_dist_1 + light_final_2 * light_dist_2;

    out_fragColor = colour;
}
