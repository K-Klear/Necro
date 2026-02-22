components {
  id: "inventory"
  component: "/main/menus/inventory/inventory.script"
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
  id: "spawn_item"
  type: "factory"
  data: "prototype: \"/main/menus/inventory/item.go\"\n"
  ""
}
embedded_components {
  id: "lbl_item_name"
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
    x: 172.0
    y: 190.0
    z: -0.9
  }
}
embedded_components {
  id: "background_box"
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
  "  x: 400.0\n"
  "  y: 520.0\n"
  "}\n"
  "size_mode: SIZE_MODE_MANUAL\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/assets/gfx/menus.atlas\"\n"
  "}\n"
  ""
  position {
    x: 583.0
    z: -1.0
  }
}
