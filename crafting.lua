minetest.register_craft({
	output = "default:diamond",
	recipe = {
		{"dye:blue","birthstones:diamond"}
	}
})

minetest.register_craft({
        output = "emerald:emerald",
        recipe = {
                {"dye:white","birthstones:emerald"}
        }
})

minetest.register_craft({
        output = "birthstones:emerald",
        recipe = {
                {"dye:green","emerald:emerald"}
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

registerblockrecipe('birthstones:ruby_fragment', 'birthstones:ruby')
registerblockrecipe('birthstones:ruby_coin', 'birthstones:ruby_fragment')

--minetest.register_craft({
--        output = "ruby:fragment 9",
--        recipe = {
--                {"ruby:ruby"},
--        }
--})
--
--minetest.register_craft({
--        output = "ruby:ruby",
--        recipe = {
--                {"ruby:fragment", "ruby:fragment", "ruby:fragment"},
--                {"ruby:fragment", "ruby:fragment", "ruby:fragment"},
--                {"ruby:fragment", "ruby:fragment", "ruby:fragment"}
--        }
--})
--minetest.register_craft({
--        output = "ruby:coin 9",
--        recipe = {
--                {"ruby:fragment"},
--        }
--})
--
--minetest.register_craft({
--        output = "ruby:fragment",
--        recipe = {
--                {"ruby:coin", "ruby:coin", "ruby:coin"},
--                {"ruby:coin", "ruby:coin", "ruby:coin"},
--                {"ruby:coin", "ruby:coin", "ruby:coin"}
--        }
--})
--
