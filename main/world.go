components {
  id: "worldscript"
  component: "/main/worldscript.script"
}
embedded_components {
  id: "create_wall"
  type: "factory"
  data: "prototype: \"/main/walls/wall.go\"\n"
  ""
}
embedded_components {
  id: "create_torch"
  type: "factory"
  data: "prototype: \"/main/objects/torch.go\"\n"
  ""
}
embedded_components {
  id: "create_floor"
  type: "factory"
  data: "prototype: \"/main/walls/floor.go\"\n"
  ""
}
embedded_components {
  id: "spawn_rat"
  type: "factory"
  data: "prototype: \"/main/entities/rat.go\"\n"
  ""
}
