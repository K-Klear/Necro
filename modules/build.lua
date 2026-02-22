local MAP = require "modules.map_objects"

local BLD = {}

BLD.buildings = {
	[hash("beacon")] = {
		name = "Soul beacon",
		cost = {soul = 10},
		factory = "/world#create_beacon"
	},
	[hash("crate")] = {
		name = "Crate",
		cost = {bone_dust = 20},
		factory = "/world#create_box"
	},
	[hash("slab")] = {
		name = "Dissection slab",
		cost = {bone_dust = 50},
		factory = "/world#create_box"
	}
}

function BLD.build()
	if BLD.selected_building == hash("beacon") then
		BLD.selected_position.z = 0.5
		local x = math.floor(BLD.selected_position.x) + 1
		local y = math.floor(BLD.selected_position.y) + 1
		local props = {x = x, y = y, tint = vmath.vector4(0, 0.5, 1, 1), range = 8}
		local new_object = factory.create(BLD.buildings[BLD.selected_building].factory, BLD.selected_position, nil, props, vmath.vector3(1/256))
		table.insert(MAP.objects, new_object)
	else
		factory.create(BLD.buildings[BLD.selected_building].factory, BLD.selected_position)
	end
	BLD.selected_building = nil
	BLD.selected_position = nil
	BLD.valid_placement = true
	msg.post("main:/build_cursor", hash("disable"))
end

function BLD.toggle()
	BLD.open = not BLD.open
	BLD.hover = nil
	msg.post(msg.url("main", "/player", nil), hash("menu_toggled"), {open = BLD.open})
	if BLD.open then
		msg.post(msg.url("menu", "/build", nil), hash("open"))
	else
		msg.post(msg.url("menu", "/build", nil), hash("close"))
	end
end

return BLD