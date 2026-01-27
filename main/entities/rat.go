components {
  id: "rat"
  component: "/main/entities/rat.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"stand_A\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/assets/gfx/rat.tilesource\"\n"
  "}\n"
  ""
  position {
    y: 31.0
  }
}
