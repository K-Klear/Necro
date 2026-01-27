#version 140

in highp vec4 var_position;
in highp vec4 var_position_world;
in mediump vec3 var_normal;
in mediump vec2 var_texcoord0;


uniform fs_uniforms
{
    mediump vec4 draw_distance;
    mediump vec4 light_1;
    mediump vec4 light_2;
    mediump vec4 tint_1;
    mediump vec4 tint_2;
};

out vec4 out_fragColor;

void main()
{
    float dist = length(var_position);
    dist = 1.0 - (min(dist, draw_distance.x) / draw_distance.x);
    dist = dist * dist;

    vec3 light_dir = vec3(light_1.xyz - var_position_world.xyz);
    float d = dot(normalize(light_dir), normalize(var_normal));
    d = clamp(d, 0, 1);

    float light_dist_1 = length(light_dir) / light_1.w;
    light_dist_1 = 1.0 - clamp(light_dist_1, 0, 1);
    light_dist_1 = max(light_dist_1 * d, 0);

    light_dir = vec3(light_2.xyz - var_position_world.xyz);
    d = dot(normalize(light_dir), normalize(var_normal));
    d = clamp(d, 0, 1);

    float light_dist_2 = length(light_dir) / light_2.w;
    light_dist_2 = 1.0 - clamp(light_dist_2, 0, 1);
    light_dist_2 = max(light_dist_2 * d, 0);

    vec3 n = (var_normal + 1.0) * 0.3;
    float tint = n.x * n.y * dist;

    vec3 colour = vec3(tint_1 * light_dist_1) + (tint_2 * light_dist_2).xyz;
    colour = colour + tint;
    out_fragColor = vec4(colour.xyz, 1.0);
}

