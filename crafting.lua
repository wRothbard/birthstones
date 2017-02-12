minetest.register_craft({
	output = "default:diamond",
	recipe = {
		{"dye:blue","birthstones:diamond"}
	}
})


local function registerblockrecipe(name, blockname)
minetest.register_craft({
	output = blockname,
	recipe = {{name, name, name},
		{name, name, name},
		{name, name, name}
		}
})
minetest.register_craft({
	output = name..' 9',
	recipe = {
		{blockname},
	}
})
end

registerblockrecipe('birthstones:alexandrite', 'birthstones:alexandriteblock')
registerblockrecipe('birthstones:amethyst', 'birthstones:amethystblock')
registerblockrecipe('birthstones:aquamarine', 'birthstones:aquamarineblock')
registerblockrecipe('birthstones:diamond', 'birthstones:diamondblock')
registerblockrecipe('birthstones:emerald', 'birthstones:emeraldblock')
registerblockrecipe('birthstones:garnet', 'birthstones:garnetblock')
registerblockrecipe('birthstones:opal', 'birthstones:opalblock')
registerblockrecipe('birthstones:peridot', 'birthstones:peridotblock')
registerblockrecipe('birthstones:ruby', 'birthstones:rubyblock')
registerblockrecipe('birthstones:sapphire', 'birthstones:sapphireblock')
registerblockrecipe('birthstones:topaz', 'birthstones:topazblock')
registerblockrecipe('birthstones:zircon', 'birthstones:zirconblock')
