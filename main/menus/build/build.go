components {
  id: "build"
  component: "/main/menus/build/build.script"
}
embedded_components {
  id: "background"
  type: "sprite"
  data: "default_animation: \"slot\"\n"
  "material: \"/render/materials/menu_sprite.material\"\n"
  "slice9 {\n"
  "  x: 32.0\n"
  "  y: 32.0\n"
  "  z: 32.0\n"
  "  w: 32.0\n"
  "}\n"
  "size {\n"
  "  x: 640.0\n"
  "  y: 520.0\n"
  "}\n"
  "size_mode: SIZE_MODE_MANUAL\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/assets/gfx/menus.atlas\"\n"
  "}\n"
  ""
  position {
    z: -1.0
  }
}
embedded_components {
  id: "lbl_building_name"
  type: "label"
  data: "size {\n"
  "  x: 128.0\n"
  "  y: 32.0\n"
  "}\n"
  "text: \"Label\"\n"
  "font: \"/assets/fonts/inventory_item_count.font\"\n"
  "material: \"/render/materials/label_menu_df.material\"\n"
  ""
  position {
    y: 208.0
    z: -0.9
  }
}
