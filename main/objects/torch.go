components {
  id: "torch"
  component: "/main/objects/torch.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"torch\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/assets/gfx/player.atlas\"\n"
  "}\n"
  ""
}
