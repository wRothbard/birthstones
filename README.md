# Minetest Game mod: birthstones
(Based on birthstones Minetest mod by Doc22)
(See "Authors..." sections below for credits)

## Primary differences from original
### Main reasons for fork:
* add more tools
* make changes to code to make use of modern Minetest (such as ore drop string)
### Notable issues found in original (see items marked with '!' in "Changes" section for others):
(hopefully these changes get corrected there)
* birthstones were wrong month (see "birthstones list.csv" in etc folder for corrections, though month names are removed in fork)
* now stone_with_opal is generated now (was impossible to get by mining before, apparently)
* crafting block back to 9 gemstones is now possible
* found some code bugs (see exclamation points under "Changes" below)
### Other major differences from original
Some major changes were done to make the mod easier to maintain:
* changed to minetest_game's naming scheme for filenames and node/tool names (aliases added for backward compatibility)
* componentized into separate lua files for each category of operations
### Things that will be kept the same:
* birthstones:diamond will still be present for now (as opposed to becoming an alias for default:diamond), since the birthstones diamond texture looks cool. The display names for all of the items will say "White Diamond". (planned: recipe to make it into regular diamond)
* No shields & armor (planned as separate mod: birthstones_3d_armor)
* No arrows (planned as separate mod: birthstones_throwing)
### Future plans
* Look into changes in "birthstones fixed" at https://forum.minetest.net/viewtopic.php?f=9&t=11497&hilit=birthstones
* Look into overlap in stone list found in Glooptest
* Make compatible with glooptest
	local glooptest = minetest.get_modpath("glooptest")
	if glooptest then
		register_alias("birthstones:amethyst","glooptest:amethyst_gem")
		register_alias("birthstones:emerald","glooptest:emerald_gem")
		register_alias("birthstones:ruby","glooptest:ruby_gem")
		register_alias("birthstones:sapphire","glooptest:sapphire_gem")
		register_alias("birthstones:topaz","glooptest:topaz_gem")
		(and glooptest:*_block for all of those)
	else
		create those ores
		register those ore nodes
		register those block nodes
	end
	-- If neeeded, can also do things like drop = glooptest and "glooptest:topaz_gem" or "birthstones:topaz"


## Changes in expertmm fork:
'!' is for bugs in 2012 version that are fixed (as opposed to features that were changed/added) in this fork
* (2017-02-11) Add recipe to create default:diamond from dye:blue + birthstones:diamond for playability (for when other mods like technic need diamonds for things)
* (2017-02-11) Add crafting recipe to convert block back into 9 gems
* (2017-02-11) Add Swords & Shovels
* (2017-02-11) Componentize into separate lua files for each category of operations
* !(2017-02-11) Make opal possible to get: added missing register_on_generated for changing some stone to opal (see oregen.lua)
* !(2017-02-11) Change drop for stone_with_topaz from stone_with_topaz to topaz (apparently this didn't cause an issue since craft method had been used)
* !(2017-02-11) Change drop of ores (to match modern style from default in minetest_game from minetest 0.4.15-git 2017-01), where * below is name, from:
	drop = 'craft "birthstones:*" 1',
	to
	drop = "birthstones:*",
* !(2017-02-11) Block needs better pick to be mined: Changed groups from:
	groups = {cracky = 3}
	to
	groups = {cracky = 1, level = 3}
* !(2017-02-11) Ore needs better pick to be mined: changed groups.cracky of all from 3 to 1
* (2017-02-11) Changed "* Ore" to "Stone with *" (because why copy other people when you can make sense instead)
* !(2017-02-11) Preliminary step in fixing one-chop axes: changed register_tool time2 and time3 from:
	[1]=time1-2.0, [2]=2.0-time2, [3]=2.0-time3}
	to
	times={[1]=time1/2.0, [2]=time2/2.0, [3]=time3/2.0}
* !(2017-02-10) Removed month from display names to avoid breaking immersion (draws too much attention to the items having a "label")
	if re-added, months would have to be corrected anyway as follows (in the original mod, alphabetical order instead of actual birthstone month determined month):
	see etc/birthstones list.csv
* !(2017-02-10) Fixed issue where topaz ore was registered twice (didn't seem to cause problems)
* !(2017-02-10) Capitalized stone name when used within tool display name
* (2017-02-10) Naming changed to match minetest texture&variable naming scheme (see changes below, where ^* is capitalized mineral name and * is uncapitalized)
	(aliases added only for backward compatibility--see aliases.lua--doing aliases can be commented in init.lua)
	Files:
		^* TO birthstones_* (ITEM)
		^*_overlay TO birthstones_mineral_* (ORE OVERLAY)
		^*_block TO birthstones_*_block
		*_axe to birthstones_tool_*axe
		*_pick to birthstones_tool_*pick
		^*_block to birthstones_*_block
	Variables:
		birthstones:*ore TO birthstones:stone_with_*
		"birthstones:".. name .. "_pick" TO "birthstones:pick_"..name
		"birthstones:".. name .. "_axe" TO "birthstones:axe_"..name


## Known Issues
* Add hoes made from birthstones
* Improve block textures
* Make a trm for treasurer (separate mod)
* Make variables based on real hardness values (but allow all birthstones to break the same types of blocks, for playability):
  * #of uses, dig times, and fleshy damage group value now all based on real-life hardness values (see xlsx spreadsheet for details and sources and extrapolation formulas)
  * Formulas were determined using Excel:
    * Diamond theoretical Brinell explanation: Excel says the curve on 18carat.co.uk, if a power curve, is Brinell = 2.9592*(ans^2.2856) where ans is Moh value
    * Other extrapolated Brinell values (rounded to nearest whole number) explanation: Excel says power function for predicting from density is Brinell = 9.0954*(ans^2.9757) where ans is metric density value
    * Extrapolated Moh values explanation: Excel says power curve from 18carat.co.uk materials is: Moh = 0.6514*(ans^0.4269) where ans is Brinell value
(to use Speedcrunch to get values not listed, enter the number without any equation, then paste the formulas above exactly to use that "answer" as a variable--see spreadsheet's "Hardness - Extrapolated" sheet for spreadsheet version of formulas)


## Minerals of note not in birthstones (for reference only) with density values from website above:
MORE but with hardness values available from 18carat.co.uk link above:
* Name,Density,Moh,Brinell
* Apatite,3.16-3.23,5,137
* Calcite,2.69-2.71,3,53


## Minetest 2017 API notes
(see http://wiki.minetest.net/Groups and https://github.com/minetest/minetest/blob/142e2d3b74ad886eed83b0fc9d6cfea100dae10a/doc/lua_api.txt#L736 )
### groupcaps (in tool_capabilities dict in register_tool 2nd param dict): a dictionary of groupcap dictionaries such as:
* choppy: chops wood
* snappy: leaves and other thin materials -- possible with sword, but wears sword out quickly
* fleshy: damage mobs/players
* crumbly: shovels etc
* cracky: picks etc
(and more unrelated to this mod)

### register_node:
http://dev.minetest.net/minetest.register_node
http://dev.minetest.net/Groups
* groups.cracky: like other dig types, the value is normally 1 to 3, and 1 requires the best pick to mine.
* groups.level: prevents being mined by lower level stuff


## Authors and License

### Authors of source code

Changed listed above under "Changes in expertmm fork":
expertmm (github.com/expertmm) MIT License

Original code:
Doc22 (originally WTFPL)


### Authors of media (textures)
(see LICENSE.txt)

Textures from original (2012) version (1.2-git):
* Textures for axes, picks, mineral overlays, items (x.png where x is name), and blocks: by Doc22 (originally WTFPL as specified at https://forum.minetest.net/viewtopic.php?id=3663 , rereleased as CC BY-SA 3.0)

Textures for new tools (2016):
see "expertmm_authored_texture_list" in etc folder
* Textures based on textures from minetest_game at https://github.com/minetest/minetest_game/tree/master/mods/default: source work is included on layers in Gimp XCF project files in etc folder
* Swords CC BY-SA 3.0: based on default_tool_steelsword.png by BlockMen (CC BY-SA 3.0)
* Shovels CC BY-SA 3.0: based on default_tool_steelshovel.png by celeron55, Perttu Ahola <celeron55@gmail.com> (CC BY-SA 3.0)

