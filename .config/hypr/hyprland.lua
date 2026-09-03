-- Hyprland config --

-- monitors --
hl.monitor({
    output   = "DP-3",
    mode     = "2560x1440@360",
    position = "0x0",
    scale    = "1",
    bitdepth = 10,
})

-- env variables --
require("configs.envs")

--  programs --
require("configs.programs")

--  appearance --
require("configs.looknfeel")
require("configs.animations")

--  input & binds --
require("configs.input")
require("configs.keybinds")

--  windowrules --
require("configs.windowrules")
