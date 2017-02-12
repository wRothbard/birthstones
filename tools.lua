-- START OF FUNCTIONS
-- (START OF INIT IS FURTHER DOWN)

local function registerpickrecipe(name, durability, time1, time2, time3, maxlev)
minetest.register_tool("birthstones:pick_" .. name.lower(), {
	description = name .. " Pickaxe",
	inventory_image = "birthstones_tool_" .. name.lower() .. "pick.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			cracky={times={[1]=time1, [2]=time2, [3]=time3}, uses=durability, maxlevel=maxlev}
		}
	},
})
minetest.register_craft({
	output = "birthstones:pick_" .. name.lower(),
	recipe = {
		{'birthstones:' .. name.lower(), 'birthstones:' .. name.lower(), 'birthstones:' .. name.lower()},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''}
	}
})
minetest.register_tool("birthstones:axe_" .. name.lower(), {
	description = name .. " Axe",
	inventory_image = "birthstones_tool_" .. name.lower() .. "axe.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=time1/2.0, [2]=time2/2.0, [3]=time3/2.0}, uses=30, maxlevel=maxlev},
			fleshy={times={[2]=time2, [3]=time3}, uses=40, maxlevel=maxlev}
		}
	},
})
minetest.register_craft({
	output = "birthstones:axe_" .. name.lower(),
	recipe = {
		{'birthstones:' .. name.lower(), 'birthstones:' .. name.lower()},
		{'birthstones:' .. name.lower(), 'default:stick'},
		{'', 'default:stick'}
	}
})
minetest.register_tool("birthstones:shovel_" .. name.lower(), {
	description = name .. " Shovel",
	inventory_image = "birthstones_tool_" .. name.lower() .. "shovel.png",
	wield_image = "birthstones_tool_" .. name.lower() .. "shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
})
minetest.register_craft({
	output = "birthstones:shovel_" .. name.lower(),
	recipe = {
		{'', 'birthstones:' .. name.lower()},
		{'', 'default:stick'},
		{'', 'default:stick'}
	}
})
end

local function registerswordrecipe(name)
minetest.register_tool("birthstones:sword_" .. name.lower(), {
	description = name .. " Pickaxe",
	inventory_image = "birthstones_tool_" .. name.lower() .. "pick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},

})
minetest.register_craft({
	output = "birthstones:sword_" .. name.lower(),
	recipe = {
		{'', 'birthstones:' .. name.lower()},
		{'', 'birthstones:' .. name.lower()},
		{'', 'default:stick'}
	}
})
end

-- END OF FUNCTIONS

-- START OF INIT

registerswordrecipe("Alexandrite")
registerswordrecipe("Amethyst")
registerswordrecipe("Aquamarine")
-- NOTE: Diamond is done manually below so as to be named White Diamond
registerswordrecipe("Emerald")
registerswordrecipe("Garnet")
registerswordrecipe("Opal")
registerswordrecipe("Peridot")
registerswordrecipe("Ruby")
registerswordrecipe("Sapphire")
registerswordrecipe("Topaz")
registerswordrecipe("Zircon")

minetest.register_tool("birthstones:sword_diamond", {
	description = "White Diamond Sword",
	inventory_image = "birthstones_tool_diamondsword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
})
minetest.register_craft({
	output = "birthstones:sword_diamond",
	recipe = {
		{'', 'birthstones:diamond'},
		{'', 'birthstones:diamond'},
		{'', 'default:stick'}
	}
})

minetest.register_tool("birthstones:shovel_diamond", {
	description = "White Diamond Shovel",
	inventory_image = "birthstones_tool_diamondshovel.png",
	wield_image = "birthstones_tool_diamondshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
})
minetest.register_craft({
	output = "birthstones:shovel_diamond",
	recipe = {
		{'', 'birthstones:diamond'},
		{'', 'default:stick'},
		{'', 'default:stick'}
	}
})


--                 name, durability, time1, time2, time3, maxlev
registerpickrecipe("Alexandrite", 30, 3.2, 1.40, 0.90, 1)
registerpickrecipe("Amethyst", 30, 3.2, 1.40, 0.90, 1)
registerpickrecipe("Aquamarine", 25, 3.2, 1.40, 0.90, 1)
registerpickrecipe("Diamond", 50, 4.5, 1.8, 1.3, 3)
registerpickrecipe("Emerald", 40, 4.2, 1.6, 1.2, 2)
registerpickrecipe("Garnet", 35, 4.0, 1.5, 1.0, 1)
registerpickrecipe("Opal", 32, 3.5, 1.6, 1.5, 2)
registerpickrecipe("Peridot", 34, 4.0, 1.5, 1.0, 1)
registerpickrecipe("Ruby", 40, 4.2, 1.6, 1.2, 2)
registerpickrecipe("Sapphire", 40, 4.2, 1.6, 1.2, 1)
registerpickrecipe("Topaz", 38, 4.1, 1.6, 1.05, 1)
registerpickrecipe("Zircon", 50, 4.1, 1.6, 1.05, 1)
