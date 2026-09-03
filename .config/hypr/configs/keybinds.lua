-- Keybinds --

-- programs --
hl.bind("SUPER + Q", hl.dsp.exec_cmd("kitty"))
hl.bind("SUPER + R", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind("SUPER + E", hl.dsp.exec_cmd("dolphin"))

-- menus --
hl.bind("SUPER + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind("SUPER + SHIFT + N", hl.dsp.exec_cmd("swaync-client -t"))
hl.bind("SUPER + SHIFT + P", hl.dsp.exec_cmd("wlogout -b 4 -T 500 -B 500"))
hl.bind("SUPER + SHIFT + W", hl.dsp.exec_cmd("~/.config/scripts/wallset"))

-- close & kill --
hl.bind("SUPER + C", hl.dsp.window.close())
hl.bind("SUPER + SHIFT + C", hl.dsp.window.kill())

-- window states --
hl.bind("SUPER + T", hl.dsp.window.float({ action = "toggle" }))

hl.bind("SUPER + F", hl.dsp.window.fullscreen_state({ internal = 1, client = 0 , action = "toggle", layout_aware = true })) -- maximize
hl.bind("SUPER + SHIFT + F", hl.dsp.window.fullscreen_state({ internal = 2, client = 2, action = "toggle", layout_aware = true })) -- fullscreen 

-- screenshots --
hl.bind("SUPER + SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m region" ))   -- region
hl.bind("SUPER + PRINT", hl.dsp.exec_cmd("hyprshot -m output" ))           -- monitor
hl.bind("SUPER + CONTROL + PRINT", hl.dsp.exec_cmd("hyprshot -m window" )) -- window

-- move focus via arrow keys --
-- hl.bind("SUPER + left",  hl.dsp.focus({ direction = "left" }))
-- hl.bind("SUPER + right", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + up",    hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + down",  hl.dsp.focus({ direction = "down" }))

-- move windows --
hl.bind("SUPER + SHIFT + left", hl.dsp.window.swap({ direction = "left" }))
hl.bind("SUPER + SHIFT + right", hl.dsp.window.swap({ direction = "right" }))
hl.bind("SUPER + SHIFT + up", hl.dsp.window.swap({ direction = "up" }))
hl.bind("SUPER + SHIFT + down", hl.dsp.window.swap({ direction = "down" }))

-- move workspaces --
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind("SUPER + " .. key,             hl.dsp.focus({ workspace = i }))
    hl.bind("SUPER + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- mouse controls --
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- playerctl --
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

-- volume controls --
--hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+" ))
--hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%-" ))
--hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle" ))

-- swayosd
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("swayosd-client --output-volume +5" ))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("swayosd-client --output-volume -5" ))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle" ))

-- turn off monitor for oled --
hl.bind("SUPER + SHIFT + O", hl.dsp.dpms({ action = "off", monitor = "DP-3"}))

-- scrolling binds -- 
hl.bind("SUPER + D", hl.dsp.layout("colresize +conf"))
hl.bind("SUPER + A", hl.dsp.layout("colresize -conf"))

hl.bind("SUPER + EQUAL", hl.dsp.layout("colresize +0.1"))
hl.bind("SUPER + MINUS", hl.dsp.layout("colresize -0.1"))

hl.bind("SUPER + S", hl.dsp.layout("fit visible"))
hl.bind("SUPER + SHIFT + S ", hl.dsp.layout("fit all"))

hl.bind("SUPER + left", hl.dsp.layout("focus l"))
hl.bind("SUPER + right", hl.dsp.layout("focus r"))

