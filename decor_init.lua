
-- list of mod decorations to remove

local def_deco = {
	["default"] = 1,
	["flowers"] = 1,
	["butterflies"] = 1,
	["fireflies"] = 1,
	["farming"] = 1
}

for key, def in pairs(ethereal.old_decor) do -- loop through old decoration

	local deco_list = type(def.decoration) == "table" and def.decoration or {def.decoration}
	local can_add = true

	-- dont re-register default schematics
	if type(def.schematic) == "string" and def.schematic:find("default/schematics/") then
		can_add = false
	else
		for _, deco in pairs(deco_list) do -- loop through decorations

			-- get mod name for decoration and biomes it appears in
			local mod = deco and deco:split(":")[1]
			local biomes = type(def.biomes) == "table" and def.biomes or {def.biomes}

			if def_deco[mod] then -- default decoration found

				for _, biome in pairs(biomes) do -- loop through biomes

					-- dont add if default decoration in a default biome found
					if ethereal.def_biomes[biome] then
						can_add = false
					end
				end
			end
		end
	end

	if can_add then
		core.register_decoration(def)
	end
end
