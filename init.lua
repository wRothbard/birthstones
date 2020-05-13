local birthstones_path = minetest.get_modpath("birthstones")

default = {}
default.node_sound_stone_defaults = function () return music.sounds.nodes.stone end

dofile(birthstones_path.."/nodes.lua")
dofile(birthstones_path.."/craftitems.lua")
dofile(birthstones_path.."/crafting.lua")
dofile(birthstones_path.."/tools.lua")
dofile(birthstones_path.."/oregen.lua")
dofile(birthstones_path.."/aliases.lua")
