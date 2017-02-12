-- START OF FUNCTIONS
-- (START OF INIT IS FURTHER DOWN)

local function create_tools_for_material(name, display_name, uses_vs_env, time1, time2, time3, maxlev)
minetest.register_tool("birthstones:pick_" .. string.lower(name), {
	description = display_name .. " Pickaxe",
	inventory_image = "birthstones_tool_" .. string.lower(name) .. "pick.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			cracky={times={[1]=time1, [2]=time2, [3]=time3}, uses=uses_vs_env, maxlevel=maxlev}
		}
	},
})
minetest.register_craft({
	output = "birthstones:pick_" .. string.lower(name),
	recipe = {
		{'birthstones:' .. string.lower(name), 'birthstones:' .. string.lower(name), 'birthstones:' .. string.lower(name)},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''}
	}
})
minetest.register_tool("birthstones:axe_" .. string.lower(name), {
	description = display_name .. " Axe",
	inventory_image = "birthstones_tool_" .. string.lower(name) .. "axe.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=time1/2.0, [2]=time2/2.0, [3]=time3/2.0}, uses=uses_vs_env, maxlevel=maxlev},
			fleshy={times={[2]=time2, [3]=time3}, uses=uses_vs_env/3*4, maxlevel=maxlev}
		}
	},
})
minetest.register_craft({
	output = "birthstones:axe_" .. string.lower(name),
	recipe = {
		{'birthstones:' .. string.lower(name), 'birthstones:' .. string.lower(name)},
		{'birthstones:' .. string.lower(name), 'default:stick'},
		{'', 'default:stick'}
	}
})
minetest.register_tool("birthstones:shovel_" .. string.lower(name), {
	description = display_name .. " Shovel",
	inventory_image = "birthstones_tool_" .. string.lower(name) .. "shovel.png",
	wield_image = "birthstones_tool_" .. string.lower(name) .. "shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=uses_vs_env, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
})
minetest.register_craft({
	output = "birthstones:shovel_" .. string.lower(name),
	recipe = {
		{'', 'birthstones:' .. string.lower(name)},
		{'', 'default:stick'},
		{'', 'default:stick'}
	}
})
minetest.register_tool("birthstones:sword_" .. string.lower(name), {
	description = display_name .. " Sword",
	inventory_image = "birthstones_tool_" .. string.lower(name) .. "sword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=uses_vs_env/3*4, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
})
minetest.register_craft({
	output = "birthstones:sword_" .. string.lower(name),
	recipe = {
		{'', 'birthstones:' .. string.lower(name)},
		{'', 'birthstones:' .. string.lower(name)},
		{'', 'default:stick'}
	}
})

end

-- END OF FUNCTIONS

-- START OF INIT

-- default:diamond:
-- 		sword uses=40
-- 		pick uses=30
-- default:stone:
-- 		sword uses=20
-- 		pick uses=20
--                 name, display_name, uses_vs_env, time1, time2, time3, maxlev
--uses_vs_env: normal use (bonus is added for fleshy target)
create_tools_for_material("Alexandrite", "Alexandrite", 17, 3.2, 1.40, 0.90, 1)
create_tools_for_material("Amethyst", "Amethyst", 17, 3.2, 1.40, 0.90, 1)
create_tools_for_material("Aquamarine", "Aquamarine", 15, 3.2, 1.40, 0.90, 1)
create_tools_for_material("Diamond", "White Diamond", 30, 4.5, 1.8, 1.3, 3)
create_tools_for_material("Emerald", "Emerald", 27, 4.2, 1.6, 1.2, 2)
create_tools_for_material("Garnet", "Garnet", 22, 4.0, 1.5, 1.0, 1)
create_tools_for_material("Opal", "Opal", 19, 3.5, 1.6, 1.5, 2)
create_tools_for_material("Peridot", "Peridot", 24, 4.0, 1.5, 1.0, 1)
create_tools_for_material("Ruby", "Ruby", 27, 4.2, 1.6, 1.2, 2)
create_tools_for_material("Sapphire", "Sapphire", 27, 4.2, 1.6, 1.2, 1)
create_tools_for_material("Topaz", "Topaz", 25, 4.1, 1.6, 1.05, 1)
create_tools_for_material("Zircon", "Zircon", 30, 4.1, 1.6, 1.05, 1)
