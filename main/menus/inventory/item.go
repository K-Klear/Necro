embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"eye_01\"\n"
  "material: \"/render/materials/menu_sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/assets/gfx/menus.atlas\"\n"
  "}\n"
  ""
  position {
    z: 0.4
  }
}
embedded_components {
  id: "label"
  type: "label"
  data: "size {\n"
  "  x: 128.0\n"
  "  y: 32.0\n"
  "}\n"
  "pivot: PIVOT_SE\n"
  "text: \"1\"\n"
  "font: \"/assets/fonts/inventory_item_count.font\"\n"
  "material: \"/render/materials/label_menu_df.material\"\n"
  ""
  position {
    x: 39.0
    y: -49.0
  }
  scale {
    x: 0.75
    y: 0.75
  }
}
