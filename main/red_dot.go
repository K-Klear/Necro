components {
  id: "script"
  component: "/main/red_dot.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"red_dot\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/assets/gfx/player.atlas\"\n"
  "}\n"
  ""
  scale {
    x: 0.007813
    y: 0.007813
    z: 0.007813
  }
}
