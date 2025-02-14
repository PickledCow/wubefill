-- items.lua

local wubefill = table.deepcopy(data.raw["item"]["landfill"])
wubefill.name = "wubefill"
wubefill.icon = "__base__/graphics/icons/water-wube.png"
wubefill.order = "c[landfill]-wa[wubefill]"
wubefill.place_as_tile = {
    result = "water-wube",
    condition = {
        layers = {
            item = true, meltable = true, object = true, player = true, water_tile = true, is_object = true, is_lower_object = true
        }
    },
    condition_size = 1,
}

local wube = table.deepcopy(data.raw["fluid"]["water"])
wube.name = "wube"
wube.icon = "__wubefill__/graphics/wube.png"
wube.order = "c[fluid]-a[wube]"
wube.default_temperature = 2014
wube.max_temperature = 2014
wube.base_color = {1, 1, 1, 1}
wube.flow_color = {1, 1, 1, 1}
wube.visualization_color = {1, 1, 1, 1}


local wubricant = table.deepcopy(data.raw["fluid"]["water"])
wubricant.name = "wubricant"
wubricant.icon = "__wubefill__/graphics/wubricant.png"
wubricant.order = "c[fluid]-a[wubricant]"
wubricant.default_temperature = 2014
wubricant.max_temperature = 2014
wubricant.base_color = {1, 1, 1, 1}
wubricant.flow_color = {1, 1, 1, 1}
wubricant.visualization_color = {1, 1, 1, 1}


data:extend({wubefill, wube, wubricant})


if mods["space-age"] then
    local wube_space_logo = table.deepcopy(data.raw["item"]["wooden-chest"])
    wube_space_logo.icon = "__wubefill__/graphics/wube-space-platform.png"
    wube_space_logo.name = "wubefill-space-logo"
    wube_space_logo.place_result = "wubefill-space-logo"
    wube_space_logo.order = "c[landfill]-wb[wubefill-space]"
    wube_space_logo.stack_size = 1
    wube_space_logo.weight = 1000000 -- 1 rocket capacity
    
    data:extend({wube_space_logo})
end
