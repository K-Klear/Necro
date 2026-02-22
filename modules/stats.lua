local STATS = {}

STATS.sight_range = 50
STATS.render_target = hash("normal")

STATS.arm_reach = 0.6

local rt = {
	[hash("normal")] = {"/rt_quad"},
	[hash("sphere")] = {"/rt_sphere"},
	[hash("segmented")] = {"/rt_segmented_01", "/rt_segmented_02", "/rt_segmented_03", "/rt_segmented_04", "/rt_segmented_05"}
}

local current_rt = hash("normal")

function STATS.set_render_target(new_rt)
	new_rt = new_rt or STATS.render_target
	if new_rt == current_rt then return end
	for key, val in ipairs(rt[current_rt]) do
		msg.post(val, hash("disable"))
	end
	for key, val in ipairs(rt[new_rt]) do
		msg.post(val, hash("enable"))
	end
	current_rt = new_rt
end

















return STATS