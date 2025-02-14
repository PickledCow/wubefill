-- entities.lua

if mods["space-age"] then
    local wube_space_logo = {
        type = "simple-entity-with-owner",
        name = "wubefill-space-logo",
        icon = "__wubefill__/graphics/wube-space-platform.png",
        -- icon_size = factorio_logo_11tiles.icon_size,
        -- icon_scale = 0.5,
        flags = {
            "not-rotatable",
            "placeable-player", 
            "player-creation",
            "not-flammable",
            "not-upgradable"
        },
        minable = {mining_time = 2, result = "wubefill-space-logo"},
        max_health = 10,
        dying_explosion = "big-explosion",
        is_military_target = true,
        collision_box = {{-2.5, -2.5}, {2.5, 2.5}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        picture = {
            north = {
                filename = "__space-age__/graphics/entity/wube-logo-space-platform/wube-logo-space-platform.png",
                width = 320,
                height = 320,
                scale = 0.5
            },
            south = {
                filename = "__space-age__/graphics/entity/wube-logo-space-platform/wube-logo-space-platform.png",
                width = 320,
                height = 320,
                scale = 0.5
            },
            east = {
                filename = "__space-age__/graphics/entity/wube-logo-space-platform/wube-logo-space-platform.png",
                width = 320,
                height = 320,
                scale = 0.5
            },
            west = {
                filename = "__space-age__/graphics/entity/wube-logo-space-platform/wube-logo-space-platform.png",
                width = 320,
                height = 320,
                scale = 0.5
            }
        },
        render_layer = "floor",
        surface_conditions = { -- Only placeable in space
            {
                property = "gravity",
                min = 0.0,
                max = 0.0
            }
        }

    }

    data:extend({wube_space_logo})
end
