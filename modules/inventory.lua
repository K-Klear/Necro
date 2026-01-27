local INV = {}

INV.open = false
INV.held_item = nil

INV.items = {}
INV.slots = {}

INV.item_props = {}
INV.item_props.diseased_eye = {
	image = "eye_01", max_stack = 1, name = "Eye (diseased)",
	allowed_slots = {
		[hash("backpack")] = true,
		[hash("eyes")] = true
	},
	props = {
		sight_range = 2,
		durability = 50,
		render_target = hash("normal")
	}
}
INV.item_props.human_eye = {
	image = "eye_01", max_stack = 1, name = "Human eye",
	allowed_slots = {
		[hash("backpack")] = true,
		[hash("eyes")] = true
	},
	props = {
		sight_range = 5,
		durability = 100,
		render_target = hash("normal")
	}
}
INV.item_props.rat_eye = {
	image = "eye_01", max_stack = 1, name = "Rat eye",
	allowed_slots = {
		[hash("backpack")] = true,
		[hash("eyes")] = true
	},
	props = {
		sight_range = 7,
		durability = 75,
		render_target = hash("sphere")
	}
}
INV.item_props.bat_eye = {
	image = "eye_01", max_stack = 1, name = "Bat eye",
	allowed_slots = {
		[hash("backpack")] = true,
		[hash("eyes")] = true
	},
	props = {
		sight_range = 1,
		durability = 75,
		render_target = hash("normal")
	}
}
INV.item_props.cat_eye = {
	image = "eye_01", max_stack = 1, name = "Cat eye",
	allowed_slots = {
		[hash("backpack")] = true,
		[hash("eyes")] = true
	},
	props = {
		sight_range = 40,
		durability = 80,
		darksight = true,
		render_target = hash("normal")
	}
}
INV.item_props.spider_eye = {
	image = "eye_01", max_stack = 1, name = "Spider eye",
	allowed_slots = {
		[hash("backpack")] = true,
		[hash("eyes")] = true
	},
	props = {
		sight_range = 8,
		durability = 60,
		darksight = true,
		render_target = hash("segmented")
	}
}


INV.item_props.bone = {
	image = "bone_01", max_stack = 256, name = "Bone",
	allowed_slots = {
		[hash("backpack")] = true,
	}
}

INV.item_props.zombie_leg = {
	image = "bone_01", max_stack = 1, name = "Leg (Zombie)",
	allowed_slots = {
		[hash("backpack")] = true,
		[hash("leg_right")] = true,
		[hash("leg_left")] = true
	},
	props = {
		movement_mode = hash("shamble"),
		durability_max = 100
	}
}
INV.item_props.normal_leg = {
	image = "bone_01", max_stack = 1, name = "Leg",
	allowed_slots = {
		[hash("backpack")] = true,
		[hash("leg_right")] = true,
		[hash("leg_left")] = true
	},
	props = {
		movement_mode = hash("normal"),
		durability_max = 100
	}
}



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

function INV.toggle()
	INV.open = not INV.open
	msg.post(msg.url("main", "/player", nil), hash("inventory_toggled"), {open = INV.open})
	if INV.open then
		msg.post(msg.url("inventory", "/inventory", nil), hash("acquire_input_focus"))
	else
		msg.post(msg.url("inventory", "/inventory", nil), hash("release_input_focus"))
	end
	msg.post(msg.url("bootstrap", "/go", nil), hash("toggle_inventory"), {is_open = INV.open})
end



















return INV