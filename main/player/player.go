components {
  id: "player"
  component: "/main/player/player.script"
}
embedded_components {
  id: "co"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_KINEMATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"player\"\n"
  "mask: \"wall\"\n"
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
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"player\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/assets/gfx/player.atlas\"\n"
  "}\n"
  ""
  scale {
    x: 0.003906
    y: 0.003906
    z: 0.003906
  }
}
embedded_components {
  id: "cam_2d"
  type: "camera"
  data: "aspect_ratio: 1.0\n"
  "fov: 0.7854\n"
  "near_z: 0.1\n"
  "far_z: 50.0\n"
  "auto_aspect_ratio: 1\n"
  "orthographic_projection: 1\n"
  "orthographic_zoom: 100.0\n"
  ""
}
embedded_components {
  id: "hit"
  type: "sound"
  data: "sound: \"/assets/sound/hand_hit_wall.wav\"\n"
  ""
}
embedded_components {
  id: "hit_wall"
  type: "sound"
  data: "sound: \"/assets/sound/hand_hit_wall.wav\"\n"
  ""
}
embedded_components {
  id: "miss"
  type: "sound"
  data: "sound: \"/assets/sound/hand_miss.wav\"\n"
  ""
}
