components {
  id: "build_cursor"
  component: "/main/menus/build/build_cursor.script"
}
embedded_components {
  id: "co"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_TRIGGER\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"placement_cursor\"\n"
  "mask: \"wall\"\n"
  "mask: \"entity\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "    id: \"box\"\n"
  "  }\n"
  "  data: 0.3\n"
  "  data: 0.3\n"
  "  data: 0.3\n"
  "}\n"
  ""
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"build_cursor\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "size {\n"
  "  x: 63.0\n"
  "  y: 63.0\n"
  "}\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/assets/gfx/menus.atlas\"\n"
  "}\n"
  ""
  position {
    z: 0.01
  }
  rotation {
    x: 1.0
    w: 6.123234E-17
  }
  scale {
    x: 0.05
    y: 0.05
    z: 0.05
  }
}
