local MAP = {}

MAP.player_position = vmath.vector3()

MAP.walls = {}
MAP.floors = {}
MAP.objects = {}

MAP.tiles = {}

MAP.torches = {}

MAP.torch_count = 0

function MAP.apply_torches()
	MAP.torch_count = nil
	for key, val in pairs(MAP.walls) do
		local wall_pos = go.get_position(val.go)
		local closest_list = {}
		if val.torches then
			for k, v in ipairs(val.torches) do
				local dist = vmath.length_sqr(v.pos - wall_pos)
				table.insert(closest_list, {dist = dist, id = k, tint = v.tint})
			end
			if #closest_list > 1 then
				table.sort(closest_list, function(a, b) return a.dist < b.dist end)
				local c1 = val.torches[closest_list[1].id]
				local c2 = val.torches[closest_list[2].id]
				local v4 = vmath.vector4(c1.pos.x, c1.pos.y, c1.pos.z, c1.range)
				go.set(val.model, "light_1", v4)
				v4 = vmath.vector4(c2.pos.x, c2.pos.y, c2.pos.z, c2.range)
				go.set(val.model, "light_2", v4)
				go.set(val.model, "tint_1", c1.tint)
				go.set(val.model, "tint_2", c2.tint)
			elseif #closest_list > 0 then
				local c1 = val.torches[closest_list[1].id]
				local v4 = vmath.vector4(c1.pos.x, c1.pos.y, c1.pos.z, c1.range)
				go.set(val.model, "light_1", v4)
				go.set(val.model, "tint_1", c1.tint)
			end
		end
	end
	for key, val in pairs(MAP.floors) do
		local floor_pos = go.get_position(val.go)
		local closest_list = {}
		if val.torches then
			for k, v in ipairs(val.torches) do
				local dist = vmath.length_sqr(v.pos - floor_pos)
				table.insert(closest_list, {dist = dist, id = k, tint = v.tint})
			end
			if #closest_list > 1 then
				table.sort(closest_list, function(a, b) return a.dist < b.dist end)
				local c1 = val.torches[closest_list[1].id]
				local c2 = val.torches[closest_list[2].id]
				local v4 = vmath.vector4(c1.pos.x, c1.pos.y, c1.pos.z, c1.range)
				go.set(val.model, "light_1", v4)
				v4 = vmath.vector4(c2.pos.x, c2.pos.y, c2.pos.z, c2.range)
				go.set(val.model, "light_2", v4)
				go.set(val.model, "tint_1", c1.tint)
				go.set(val.model, "tint_2", c2.tint)
			elseif #closest_list > 0 then
				local c1 = val.torches[closest_list[1].id]
				local v4 = vmath.vector4(c1.pos.x, c1.pos.y, c1.pos.z, c1.range)
				go.set(val.model, "light_1", v4)
				go.set(val.model, "tint_1", c1.tint)
			end
		end
	end
end


return MAP
