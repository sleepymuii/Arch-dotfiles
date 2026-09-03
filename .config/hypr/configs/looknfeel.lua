-- Look & Feel --

local colors = require("configs.colors")

hl.config({
    general = {
        gaps_in  = 6,
        gaps_out = 18,

        border_size = 2,

        col = {
            active_border   = { colors = {colors.primary, colors.primary}, angle = 45 },
            inactive_border = colors.on_secondary,
        },

        resize_on_border = true,
        allow_tearing = false,
        layout = "scrolling",
    },

    decoration = {
        rounding       = 5,
        rounding_power = 1,

        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },

        blur = {
            enabled   = true,
            size      = 15,
            passes    = 2,
            ignore_opacity = true,
            noise     = 0.08,
            contrast  = 1.5,
            brightness = 0.8,
            xray      = false,
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },

    -- scrolling layout --
    scrolling = {
        fullscreen_on_one_column = true,
        -- explicit_column_widths = "0.5", "0.667", "1.0",
    },
})
