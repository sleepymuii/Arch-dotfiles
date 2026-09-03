-- Programs --

local programs = {
}
-- Autostart --

hl.on("hyprland.start", function () 
  hl.exec_cmd("swaync & hypridle & awww-daemon & waybar & quickshell & swayosd-server")
  hl.exec_cmd("hypridle")
  hl.exec_cmd("systemctl --user start hyprpolkitagent") 
end)

return programs
