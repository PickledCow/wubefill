-- technology.lua

local regular_cost = 2014
local regular_ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}}

if settings.startup["wubefill-cheap-research"].value then
    regular_cost = 100
    regular_ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}}
end


local regular_unlocks = {
    {type = "unlock-recipe", recipe = "wube-synthesis"},
    {type = "unlock-recipe", recipe = "wubefill"},
    {type = "unlock-recipe", recipe = "wubricant-refinement"}
}

if settings.startup["wubefill-simple-recipes"].value then
    regular_unlocks = {
        {type = "unlock-recipe", recipe = "wube-synthesis"},
        {type = "unlock-recipe", recipe = "wubefill"}
    }
end

data:extend({
    {
        type = "technology",
        name = "wube-processing",
        prerequisites = {"lubricant"},
        icons = {
            {
                icon = "__core__/graphics/wube-logo.png",
                icon_size = 219
            }
        },
        unit = {
            count = regular_cost,
            ingredients = regular_ingredients,
            time = 30,
        },
        effects = regular_unlocks
    }
})


if mods["space-age"] then

    local space_cost = 2024

    if settings.startup["wubefill-cheap-research"].value then
        space_cost = 200
    end

    data:extend({
        {
            type = "technology",
            name = "wube-space",
            prerequisites = {"wube-processing", "space-science-pack"},
            icons = {
                {
                    icon = "__space-age__/graphics/entity/wube-logo-space-platform/wube-logo-space-platform.png",
                    icon_size = 320
                }
            },
            unit = {
                count = space_cost,
                ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"space-science-pack", 1}},
                time = 60,
            },
            effects = {
                {type = "unlock-recipe", recipe = "wubefill-space-logo"}
            }
        }
    })

end
