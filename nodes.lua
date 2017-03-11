-- START RAW MATERIALS
minetest.register_node( "birthstones:stone_with_alexandrite", {
	description = "Stone with Alexandrite",
	tiles = { "default_stone.png^birthstones_mineral_alexandrite.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:alexandrite",
})
minetest.register_node( "birthstones:stone_with_amethyst", {
	description = "Stone with Amethyst",
	tiles = { "default_stone.png^birthstones_mineral_amethyst.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:amethyst",
})
minetest.register_node( "birthstones:stone_with_aquamarine", {
	description = "Stone with Aquamarine",
	tiles = { "default_stone.png^birthstones_mineral_aquamarine.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:aquamarine",
})
minetest.register_node( "birthstones:stone_with_diamond", {
	description = "Stone with White Diamond",
	tiles = { "default_stone.png^birthstones_mineral_diamond.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:diamond",
})
minetest.register_node( "birthstones:stone_with_emerald", {
	description = "Stone with Emerald",
	tiles = { "default_stone.png^birthstones_mineral_emerald.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:emerald",
})
minetest.register_node( "birthstones:stone_with_garnet", {
	description = "Stone with Garnet",
	tiles = { "default_stone.png^birthstones_mineral_garnet.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:garnet",
})
minetest.register_node( "birthstones:stone_with_opal", {
	description = "Stone with Opal",
	tiles = { "default_stone.png^birthstones_mineral_opal.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:opal",
})
minetest.register_node( "birthstones:stone_with_peridot", {
	description = "Stone with Peridot",
	tiles = { "default_stone.png^birthstones_mineral_peridot.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:peridot",
})
minetest.register_node( "birthstones:stone_with_ruby", {
	description = "Stone with Ruby",
	tiles = { "default_stone.png^birthstones_mineral_ruby.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:ruby",
})
minetest.register_node( "birthstones:stone_with_sapphire", {
	description = "Stone with Sapphire",
	tiles = { "default_stone.png^birthstones_mineral_sapphire.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:sapphire",
})
minetest.register_node( "birthstones:stone_with_topaz", {
	description = "Stone with Topaz",
	tiles = { "default_stone.png^birthstones_mineral_topaz.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:topaz",
})
minetest.register_node( "birthstones:stone_with_zircon", {
	description = "Stone with Zircon",
	tiles = { "default_stone.png^birthstones_mineral_zircon.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:zircon",
})

-- END RAW MATERIALS


-- START BLOCKS


minetest.register_node( "birthstones:alexandriteblock", {
	description = "Alexandrite Block",
	tiles = { "birthstones_alexandrite_block_top.png", "birthstones_alexandrite_block_top.png", "birthstones_alexandrite_block_east.png", "birthstones_alexandrite_block_east.png", "birthstones_alexandrite_block_north.png", "birthstones_alexandrite_block_north.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node( "birthstones:amethystblock", {
	description = "Amethyst Block",
	tiles = { "birthstones_amethyst_block_top.png", "birthstones_amethyst_block_top.png", "birthstones_amethyst_block_east.png", "birthstones_amethyst_block_east.png", "birthstones_amethyst_block_north.png", "birthstones_amethyst_block_north.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node( "birthstones:aquamarineblock", {
	description = "Aquamarine Block",
	tiles = { "birthstones_aquamarine_block_top.png", "birthstones_aquamarine_block_top.png", "birthstones_aquamarine_block_east.png", "birthstones_aquamarine_block_east.png", "birthstones_aquamarine_block_north.png", "birthstones_aquamarine_block_north.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node( "birthstones:diamondblock", {
	description = "White Diamond Block",
	tiles = { "birthstones_diamond_block_top.png", "birthstones_diamond_block_top.png", "birthstones_diamond_block_east.png", "birthstones_diamond_block_east.png", "birthstones_diamond_block_north.png", "birthstones_diamond_block_north.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node( "birthstones:emeraldblock", {
	description = "Emerald Block",
	tiles = { "birthstones_emerald_block.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node( "birthstones:garnetblock", {
	description = "Garnet Block",
	tiles = { "birthstones_garnet_block.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node( "birthstones:opalblock", {
	description = "Opal Block",
	tiles = { "birthstones_opal_block.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node( "birthstones:peridotblock", {
	description = "Peridot Block",
	tiles = { "birthstones_peridot_block.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node( "birthstones:rubyblock", {
	description = "Ruby Block",
	tiles = { "birthstones_ruby_block.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node( "birthstones:sapphireblock", {
	description = "Sapphire Block",
	tiles = { "birthstones_sapphire_block.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
-- tiles: +Y, -Y, +X, -X, +Z, -Z. In English: top, bottom, right, left, back, front.  - http://dev.minetest.net/minetest.register_node
minetest.register_node( "birthstones:topazblock", {
	description = "Topaz Block",
	tiles = { "birthstones_topaz_block_top.png", "birthstones_topaz_block_top.png", "birthstones_topaz_block_east.png", "birthstones_topaz_block_east.png", "birthstones_topaz_block_north.png", "birthstones_topaz_block_north.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node( "birthstones:zirconblock", {
	description = "Zircon Block",
	tiles = { "birthstones_zircon_block.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})