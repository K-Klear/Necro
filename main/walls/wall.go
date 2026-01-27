embedded_components {
  id: "model"
  type: "model"
  data: "mesh: \"/assets/models/wall.dae\"\n"
  "name: \"{{NAME}}\"\n"
  "materials {\n"
  "  name: \"default\"\n"
  "  material: \"/render/materials/wall.material\"\n"
  "}\n"
  ""
  rotation {
    x: 0.70710677
    w: 0.70710677
  }
}
embedded_components {
  id: "co"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_STATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"wall\"\n"
  "mask: \"player\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "    id: \"co\"\n"
  "  }\n"
  "  data: 0.5\n"
  "  data: 0.03125\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
