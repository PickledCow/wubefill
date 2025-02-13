

local wube_synthesis = {
    type = "recipe",
    name = "wube-synthesis",
    enabled = false,
    icon = "__wubefill__/graphics/wube_synthesis.png",
    category = "chemistry-or-cryogenics",
    subgroup = "intermediate-product",
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 500},
        {type = "fluid", name = "water", amount = 500},
        {type = "item", name = "electronic-circuit", amount = 5},
        {type = "item", name = "advanced-circuit", amount = 5}
    },
    results = {{type = "fluid", name = "wube", amount = 10}},
    allowed_module_categories = { "speed", "efficiency", "productivity" },
    allow_productivity = true

}

local wubricant_refinement = {
    type = "recipe",
    name = "wubricant-refinement",
    enabled = false,
    category = "chemistry-or-cryogenics",
    subgroup = "intermediate-product",
    icon = "__wubefill__/graphics/wube.png",
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "wubricant", amount = 6000},
        {type = "fluid", name = "wube", amount = 500},
        {type = "item", name = "electronic-circuit", amount = 1},
        {type = "item", name = "advanced-circuit", amount = 1}
    },
    results = {{type = "fluid", name = "wube", amount = 550}},
    allowed_module_categories = { "speed", "efficiency", "productivity" },
    allow_productivity = true

}

local wubefill = {
    type = "recipe",
    name = "wubefill",
    enabled = false,
    icon = "__base__/graphics/icons/water-wube.png",
    category = "crafting-with-fluid",
    subgroup = "artificial-tiles",
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "wube", amount = 50},
        {type = "item", name = "stone", amount = 50}
    },
    results = {{type = "item", name = "wubefill", amount = 10}}

}

data:extend({wube_synthesis, wubefill, wubricant_refinement})

if mods["space-age"] then

    local wube_space_logo = {
        type = "recipe",
        name = "wubefill-space-logo",
        enabled = false,
        category = "crafting-with-fluid",
        subgroup = "artificial-tiles",
        icon = "__wubefill__/graphics/wube-space-platform.png",
        energy_required = 30,
        ingredients = {
            {type = "fluid", name = "wube", amount = 1000},
            {type = "item", name = "space-platform-foundation", amount = 25}
        },
        results = {{type = "item", name = "wubefill-space-logo", amount = 1}}
    
    }

    data:extend({wube_space_logo})
end
