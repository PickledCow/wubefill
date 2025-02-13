-- technology.lua

data:extend({
    {
        type = "technology",
        name = "wube-processing",
        prerequisites = {"chemical-science-pack"},
        icons = {
            {
                icon = "__core__/graphics/wube-logo.png",
                icon_size = 219
            }
        },
        unit = {
            count = 2014,
            ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}},
            time = 60,
        },
        effects = {
            {type = "unlock-recipe", recipe = "wube-synthesis"},
            {type = "unlock-recipe", recipe = "wubefill"},
            {type = "unlock-recipe", recipe = "wubricant-refinement"}
        }
    }
})


if mods["space-age"] then

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
                count = 2024,
                ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"space-science-pack", 1}},
                time = 60,
            },
            effects = {
                {type = "unlock-recipe", recipe = "wubefill-space-logo"}
            }
        }
    })

end
