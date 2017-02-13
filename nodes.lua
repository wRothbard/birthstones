-- START RAW MATERIALS
minetest.register_node( "birthstones:stone_with_alexandrite", {
	description = "Stone with Alexandrite",
	tile_images = { "default_stone.png^birthstones_mineral_alexandrite.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:alexandrite",
})
minetest.register_node( "birthstones:stone_with_amethyst", {
	description = "Stone with Amethyst",
	tile_images = { "default_stone.png^birthstones_mineral_amethyst.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:amethyst",
})
minetest.register_node( "birthstones:stone_with_aquamarine", {
	description = "Stone with Aquamarine",
	tile_images = { "default_stone.png^birthstones_mineral_aquamarine.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:aquamarine",
})
minetest.register_node( "birthstones:stone_with_diamond", {
	description = "Stone with White Diamond",
	tile_images = { "default_stone.png^birthstones_mineral_diamond.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:diamond",
})
minetest.register_node( "birthstones:stone_with_emerald", {
	description = "Stone with Emerald",
	tile_images = { "default_stone.png^birthstones_mineral_emerald.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:emerald",
})
minetest.register_node( "birthstones:stone_with_garnet", {
	description = "Stone with Garnet",
	tile_images = { "default_stone.png^birthstones_mineral_garnet.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:garnet",
})
minetest.register_node( "birthstones:stone_with_opal", {
	description = "Stone with Opal",
	tile_images = { "default_stone.png^birthstones_mineral_opal.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:opal",
})
minetest.register_node( "birthstones:stone_with_peridot", {
	description = "Stone with Peridot",
	tile_images = { "default_stone.png^birthstones_mineral_peridot.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:peridot",
})
minetest.register_node( "birthstones:stone_with_ruby", {
	description = "Stone with Ruby",
	tile_images = { "default_stone.png^birthstones_mineral_ruby.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:ruby",
})
minetest.register_node( "birthstones:stone_with_sapphire", {
	description = "Stone with Sapphire",
	tile_images = { "default_stone.png^birthstones_mineral_sapphire.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:sapphire",
})
minetest.register_node( "birthstones:stone_with_topaz", {
	description = "Stone with Topaz",
	tile_images = { "default_stone.png^birthstones_mineral_topaz.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:topaz",
})
minetest.register_node( "birthstones:stone_with_zircon", {
	description = "Stone with Zircon",
	tile_images = { "default_stone.png^birthstones_mineral_zircon.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "birthstones:zircon",
})

-- END RAW MATERIALS


-- START BLOCKS


minetest.register_node( "birthstones:alexandriteblock", {
	description = "Alexandrite Block",
	tile_images = { "birthstones_alexandrite_block.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node( "birthstones:amethystblock", {
	description = "Amethyst Block",
	tile_images = { "birthstones_amethyst_block.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node( "birthstones:aquamarineblock", {
	description = "Aquamarine Block",
	tile_images = { "birthstones_aquamarine_block.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node( "birthstones:diamondblock", {
	description = "White Diamond Block",
	tile_images = { "birthstones_diamond_block.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node( "birthstones:emeraldblock", {
	description = "Emerald Block",
	tile_images = { "birthstones_emerald_block.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node( "birthstones:garnetblock", {
	description = "Garnet Block",
	tile_images = { "birthstones_garnet_block.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node( "birthstones:opalblock", {
	description = "Opal Block",
	tile_images = { "birthstones_opal_block.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node( "birthstones:peridotblock", {
	description = "Peridot Block",
	tile_images = { "birthstones_peridot_block.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node( "birthstones:rubyblock", {
	description = "Ruby Block",
	tile_images = { "birthstones_ruby_block.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node( "birthstones:sapphireblock", {
	description = "Sapphire Block",
	tile_images = { "birthstones_sapphire_block.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
-- tile_images: +Y, -Y, +X, -X, +Z, -Z. In English: top, bottom, right, left, back, front.  - http://dev.minetest.net/minetest.register_node
minetest.register_node( "birthstones:topazblock", {
	description = "Topaz Block",
	tile_images = { "birthstones_topaz_block_top.png", "birthstones_topaz_block_top.png", "birthstones_topaz_block_east.png", "birthstones_topaz_block_east.png", "birthstones_topaz_block_north.png", "birthstones_topaz_block_north.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node( "birthstones:zirconblock", {
	description = "Zircon Block",
	tile_images = { "birthstones_zircon_block.png" },
	is_ground_content = true,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})