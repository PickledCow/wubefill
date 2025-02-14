-- tiles.lua

local water_tile = data.raw["tile"]["water"]

-- Copy before wiping
local wubefill = table.deepcopy(data.raw["tile"]["water-wube"])
data.raw["tile"]["water-wube"] = nil

wubefill.name = "water-wube"
wubefill.order = "c[landfill]-h[water-wube]"
wubefill.subgroup = "artificial-tiles"
wubefill.hidden = false
wubefill.hidden_in_factoriopedia = false
wubefill.fluid = "wubricant"
wubefill.build_sound = water_tile.build_sound
wubefill.map_color = {1,1,1}
wubefill.mined_sound = data.raw["fish"]["fish"].mined_sound
wubefill.minable = {
    minable = true,
    mining_time = 0.5,
    result = "wubefill"
}

data:extend({wubefill})
