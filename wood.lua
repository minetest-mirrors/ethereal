
local S = core.get_translator("ethereal")

-- register wood and placement helper

local function add_wood(name, def)

	def.sounds = default.node_sound_wood_defaults() -- some defaults
	def.paramtype2 = "facedir"
	def.is_ground_content = false

	if ethereal.wood_rotate then
		def.on_place = core.rotate_node
	else
		def.place_param2 = 0
	end

	core.register_node(name, def)
end

-- register trunk helper

local function add_trunk(name, def)

	def.sounds = default.node_sound_wood_defaults()
	def.paramtype2 = "facedir"
	def.on_place = core.rotate_node
	def.groups = def.groups or {tree = 1, choppy = 2, oddly_breakable_by_hand = 1,
			flammable = 2}

	core.register_node(name, def)
end

-- all-faces trunk helper

local function add_allfaces(name, def)

	def.description = S("All-faces") .. " " .. S(def.description)
	def.sounds = default.node_sound_wood_defaults()
	def.groups = def.groups or {tree = 1, choppy = 2, oddly_breakable_by_hand = 1,
			flammable = 2}

	local oldname = "ethereal:" .. name
	local newname = "ethereal:all_faces_" .. name

	core.register_node(newname, def)

	core.register_craft({
		output = newname .. " 8",
		recipe = {
			{oldname, oldname, oldname},
			{oldname, "", oldname},
			{oldname, oldname, oldname}
		}
	})
end

-- poplar

local tmp = "ethereal:poplar_trunk"

add_trunk(tmp, {
	description = S("Poplar Trunk"),
	tiles = {
		"ethereal_poplar_trunk_top.png",
		"ethereal_poplar_trunk_top.png",
		"ethereal_poplar_trunk.png"
	}
})

add_wood("ethereal:poplar_wood", {
	description = S("Poplar Wood"),
	tiles = {"ethereal_poplar_wood.png"},
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1}
})

core.register_craft({
	output = "ethereal:poplar_wood 4", recipe = {{tmp}}
})

add_allfaces("poplar_trunk", {
	description = "Poplar Trunk",
	tiles = {"ethereal_poplar_trunk_top.png"}
})

-- basandra

add_wood("ethereal:basandra_wood", {
	description = S("Basandra Wood"),
	tiles = {"ethereal_basandra_bush_wood.png"},
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1}
})

core.register_craft({
	output = "ethereal:basandra_wood 2",
	recipe = {{"ethereal:basandra_bush_stem"}}
})

-- sakura

tmp = "ethereal:sakura_trunk"

add_trunk(tmp, {
	description = S("Sakura Trunk"),
	tiles = {
		"ethereal_sakura_trunk_top.png",
		"ethereal_sakura_trunk_top.png",
		"ethereal_sakura_trunk.png"
	}
})

add_wood("ethereal:sakura_wood", {
	description = S("Sakura Wood"),
	tiles = {"ethereal_sakura_wood.png"},
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3}
})

core.register_craft({
	output = "ethereal:sakura_wood 4", recipe = {{tmp}}
})

add_allfaces("sakura_trunk", {
	description = "Sakura Trunk",
	tiles = {"ethereal_sakura_trunk_top.png"}
})

-- Mangrove

tmp = "ethereal:mangrove_tree"

add_trunk(tmp, {
	description = S("Mangrove Trunk"),
	tiles = {
		"mcl_mangrove_log_top.png",
		"mcl_mangrove_log_top.png",
		"mcl_mangrove_log.png"
	}
})

add_wood("ethereal:mangrove_wood", {
	description = S("Mangrove Wood"),
	tiles = {"mcl_mangrove_planks.png"},
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3}
})

core.register_craft({
	output = "ethereal:mangrove_wood 4", recipe = {{tmp}}
})

add_allfaces("mangrove_tree", {
	description = "Mangrove Trunk",
	tiles = {"mcl_mangrove_log_top.png"}
})

-- mangrove roots

core.register_node("ethereal:mangrove_roots", {
	description = S("Mangrove Roots"),
	waving = 0, walkable = false, climbable = true,
	place_param2 = 1, -- Prevent leafdecay for placed nodes
	tiles = {
		"mcl_mangrove_roots_top.png",
		"mcl_mangrove_roots_side.png",
		"mcl_mangrove_roots_side.png",
	},
	paramtype = "light",
	drawtype = "allfaces_optional",
	groups = {snappy = 3, choppy = 3, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

-- willow

tmp = "ethereal:willow_trunk"

add_trunk(tmp, {
	description = S("Willow Trunk"),
	tiles = {
		"ethereal_willow_trunk_top.png",
		"ethereal_willow_trunk_top.png",
		"ethereal_willow_trunk.png"
	}
})

add_wood("ethereal:willow_wood", {
	description = S("Willow Wood"),
	tiles = {"ethereal_willow_wood.png"},
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3}
})

core.register_craft({
	output = "ethereal:willow_wood 4", recipe = {{tmp}}
})

add_allfaces("willow_trunk", {
	description = "Willow Trunk",
	tiles = {"ethereal_willow_trunk_top.png"}
})

-- redwood

tmp = "ethereal:redwood_trunk"

add_trunk(tmp, {
	description = S("Redwood Trunk"),
	tiles = {
		"ethereal_redwood_trunk_top.png",
		"ethereal_redwood_trunk_top.png",
		"ethereal_redwood_trunk.png"
	}
})

add_wood("ethereal:redwood_wood", {
	description = S("Redwood Wood"),
	tiles = {"ethereal_redwood_wood.png"},
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3}
})

core.register_craft({
	output = "ethereal:redwood_wood 4", recipe = {{tmp}}
})

add_allfaces("redwood_trunk", {
	description = "Redwood Trunk",
	tiles = {"ethereal_redwood_trunk_top.png"}
})

-- frost

tmp = "ethereal:frost_tree"

add_trunk(tmp, {
	description = S("Frost Tree"),
	tiles = {
		"ethereal_frost_tree_top.png",
		"ethereal_frost_tree_top.png",
		"ethereal_frost_tree.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, puts_out_fire = 1}
})

add_wood("ethereal:frost_wood", {
	description = S("Frost Wood"),
	tiles = {"ethereal_frost_wood.png"},
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1}
})

core.register_craft({
	output = "ethereal:frost_wood 4", recipe = {{tmp}}
})

add_allfaces("frost_tree", {
	description = "Frost Tree",
	tiles = {"ethereal_frost_tree_top.png"}
})

-- healing

tmp = "ethereal:yellow_trunk"

add_trunk(tmp, {
	description = S("Healing Tree Trunk"),
	tiles = {
		"ethereal_yellow_tree_top.png",
		"ethereal_yellow_tree_top.png",
		"ethereal_yellow_tree.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, puts_out_fire = 1}
})

add_wood("ethereal:yellow_wood", {
	description = S("Healing Tree Wood"),
	tiles = {"ethereal_yellow_wood.png"},
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1}
})

core.register_craft({
	output = "ethereal:yellow_wood 4", recipe = {{tmp}}
})

add_allfaces("yellow_trunk", {
	description = "Healing Trunk",
	tiles = {"ethereal_yellow_tree_top.png"}
})

-- palm (thanks to VanessaE for palm textures)

tmp = "ethereal:palm_trunk"

add_trunk(tmp, {
	description = S("Palm Trunk"),
	tiles = {
		"moretrees_palm_trunk_top.png",
		"moretrees_palm_trunk_top.png",
		"moretrees_palm_trunk.png"
	}
})

add_wood("ethereal:palm_wood", {
	description = S("Palm Wood"),
	tiles = {"moretrees_palm_wood.png"},
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3}
})

core.register_craft({
	output = "ethereal:palm_wood 4", recipe = {{tmp}}
})

add_allfaces("palm_trunk", {
	description = "Palm Trunk",
	tiles = {"moretrees_palm_trunk_top.png"}
})

-- banana

tmp = "ethereal:banana_trunk"

add_trunk(tmp, {
	description = S("Banana Trunk"),
	tiles = {
		"ethereal_banana_trunk_top.png",
		"ethereal_banana_trunk_top.png",
		"ethereal_banana_trunk.png"
	}
})

add_wood("ethereal:banana_wood", {
	description = S("Banana Wood"),
	tiles = {"ethereal_banana_wood.png"},
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3}
})

core.register_craft({
	output = "ethereal:banana_wood 4", recipe = {{tmp}}
})

add_allfaces("banana_trunk", {
	description = "Banana Trunk",
	tiles = {"ethereal_banana_trunk_top.png"}
})

-- scorched

tmp = "ethereal:scorched_tree"

add_trunk(tmp, {
	description = S("Scorched Tree"),
	tiles = {
		"ethereal_scorched_tree_top.png",
		"ethereal_scorched_tree_top.png",
		"ethereal_scorched_tree.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 1}
})

core.register_craft({
	output = tmp .. " 8",
	recipe = {
		{"group:tree", "group:tree", "group:tree"},
		{"group:tree", "default:torch", "group:tree"},
		{"group:tree", "group:tree", "group:tree"}
	}
})

add_allfaces("scorched_tree", {
	description = "Scorched Tree",
	tiles = {"ethereal_scorched_tree_top.png"}
})

-- mushroom

tmp = "ethereal:mushroom_trunk"

add_trunk(tmp, {
	description = S("Mushroom Trunk"),
	tiles = {
		"ethereal_mushroom_trunk_top.png",
		"ethereal_mushroom_trunk_top.png",
		"ethereal_mushroom_trunk.png"
	}
})

add_allfaces("mushroom_trunk", {
	description = "Mushroom Trunk",
	tiles = {"ethereal_mushroom_trunk_top.png"}
})

-- birch (thanks to VanessaE for birch textures)

tmp = "ethereal:birch_trunk"

add_trunk(tmp, {
	description = S("Birch Trunk"),
	tiles = {
		"moretrees_birch_trunk_top.png",
		"moretrees_birch_trunk_top.png",
		"moretrees_birch_trunk.png"
	}
})

add_wood("ethereal:birch_wood", {
	description = S("Birch Wood"),
	tiles = {"moretrees_birch_wood.png"},
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3}
})

core.register_craft({
	output = "ethereal:birch_wood 4", recipe = {{tmp}}
})

add_allfaces("birch_trunk", {
	description = "Birch Trunk",
	tiles = {"moretrees_birch_trunk_top.png"}
})

-- Bamboo

core.register_node("ethereal:bamboo", {
	description = S("Bamboo"),
	drawtype = "plantlike",
	tiles = {"ethereal_bamboo_trunk.png"},
	inventory_image = "ethereal_bamboo_trunk.png",
	wield_image = "ethereal_bamboo_trunk.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = true,
	selection_box = {
		type = "fixed", fixed = {-0.15, -0.5, -0.15, 0.15, 0.5, 0.15}
	},
	collision_box = {
		type = "fixed", fixed = {-0.15, -0.5, -0.15, 0.15, 0.5, 0.15}
	},
	groups = {choppy = 3, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),

	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end
})

core.register_craft({ type = "fuel", recipe = "ethereal:bamboo", burntime = 2 })

-- Bamboo block

tmp = "ethereal:bamboo"

add_wood("ethereal:bamboo_block", {
	description = S("Bamboo Block"),
	tiles = {"ethereal_bamboo_floor.png"},
	groups = {wood = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 2}
})

core.register_craft({
	output = "ethereal:bamboo_block",
	recipe = { {tmp, tmp, tmp}, {tmp, tmp, tmp}, {tmp, tmp, tmp} }
})

-- olive

tmp = "ethereal:olive_trunk"

add_trunk(tmp, {
	description = S("Olive Trunk"),
	tiles = {
		"ethereal_olive_trunk_top.png",
		"ethereal_olive_trunk_top.png",
		"ethereal_olive_trunk.png"
	}
})

add_wood("ethereal:olive_wood", {
	description = S("Olive Wood"),
	tiles = {"ethereal_olive_wood.png"},
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3}
})

core.register_craft({
	output = "ethereal:olive_wood 4", recipe = {{tmp}}
})

add_allfaces("olive_trunk", {
	description = "Olive Trunk",
	tiles = {"ethereal_olive_trunk_top.png"}
})
