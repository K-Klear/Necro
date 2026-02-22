components {
  id: "script"
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
    y: 0.242188
  }
  scale {
    x: 0.007813
    y: 0.007813
    z: 0.007813
  }
}
embedded_components {
  id: "co"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_KINEMATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"entity\"\n"
  "mask: \"wall\"\n"
  "mask: \"placement_cursor\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_SPHERE\n"
  "    position {\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 1\n"
  "    id: \"sphere\"\n"
  "  }\n"
  "  data: 0.125\n"
  "}\n"
  ""
}
