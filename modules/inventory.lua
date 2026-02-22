local INV = {}

INV.open = false
INV.held_item = nil

INV.items = {}
INV.slots = {}
INV.containers = {}

INV.item_props = {}
INV.item_props.diseased_eye = {
	image = "eye_01", name = "Eye (diseased)",
	allowed_slots = {
		[hash("backpack")] = true,
		[hash("eyes")] = true,
		[hash("container")] = true
	},
	props = {
		sight_range = 2,
		durability = 50,
		render_target = hash("normal")
	}
}
INV.item_props.human_eye = {
	image = "eye_01", name = "Human eye",
	allowed_slots = {
		[hash("backpack")] = true,
		[hash("eyes")] = true,
		[hash("container")] = true
	},
	props = {
		sight_range = 5,
		durability = 100,
		render_target = hash("normal")
	}
}
INV.item_props.rat_eye = {
	image = "eye_01", name = "Rat eye",
	allowed_slots = {
		[hash("backpack")] = true,
		[hash("eyes")] = true,
		[hash("container")] = true
	},
	props = {
		sight_range = 7,
		durability = 75,
		render_target = hash("sphere")
	}
}
INV.item_props.bat_eye = {
	image = "eye_01", name = "Bat eye",
	allowed_slots = {
		[hash("backpack")] = true,
		[hash("eyes")] = true,
		[hash("container")] = true
	},
	props = {
		sight_range = 1,
		durability = 75,
		render_target = hash("normal")
	}
}
INV.item_props.cat_eye = {
	image = "eye_01", name = "Cat eye",
	allowed_slots = {
		[hash("backpack")] = true,
		[hash("eyes")] = true,
		[hash("container")] = true
	},
	props = {
		sight_range = 40,
		durability = 80,
		darksight = true,
		render_target = hash("normal")
	}
}
INV.item_props.spider_eye = {
	image = "eye_01", name = "Spider eye",
	allowed_slots = {
		[hash("backpack")] = true,
		[hash("eyes")] = true,
		[hash("container")] = true
	},
	props = {
		sight_range = 8,
		durability = 60,
		darksight = true,
		render_target = hash("segmented")
	}
}


INV.item_props.bone = {
	image = "bone_01", stackable = true, name = "Bone",
	allowed_slots = {
		[hash("backpack")] = true,
		[hash("container")] = true
	}
}

INV.item_props.zombie_leg = {
	image = "bone_01", name = "Leg (Zombie)",
	allowed_slots = {
		[hash("backpack")] = true,
		[hash("leg_right")] = true,
		[hash("leg_left")] = true,
		[hash("container")] = true
	},
	props = {
		movement_mode = hash("shamble"),
		durability_max = 100
	}
}
INV.item_props.normal_leg = {
	image = "bone_01", name = "Leg",
	allowed_slots = {
		[hash("backpack")] = true,
		[hash("leg_right")] = true,
		[hash("leg_left")] = true,
		[hash("container")] = true
	},
	props = {
		movement_mode = hash("normal"),
		durability_max = 100
	}
}
INV.item_props.bone_dust = {
	image = "bone_dust", stackable = true, name = "Bone dust",
	allowed_slots = {
		[hash("backpack")] = true,
		[hash("container")] = true
	},
	props = {
	}
}

function INV.create_container(self)
	local t = {slots = {}}
	for slot_id = 21, 28 do
		t.slots[slot_id] = {item = false}
	end
	table.insert(INV.containers, t)
	self.container_id = #INV.containers
end

function INV.check_slot_eligibility(slot_id)
	local slot_tab = INV.slots[slot_id]
	if INV.held_item then
		if slot_tab.item then
			if slot_tab.item.type == INV.held_item.type then
				return true
			else
				return false
			end
		else
			if INV.item_props[INV.held_item.type].allowed_slots[slot_tab.slot_type] then
				return true
			else
				return false
			end
		end
	else
		return true
	end
end

function INV.toggle(container)
	INV.open = not INV.open
	msg.post(msg.url("main", "/player", nil), hash("menu_toggled"), {open = INV.open})
	if INV.open then
		msg.post(msg.url("menu", "/inventory", nil), hash("open"), {container = container})
	else
		msg.post(msg.url("menu", "/inventory", nil), hash("close"))
	end
end





return INV