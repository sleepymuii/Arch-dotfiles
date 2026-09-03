-- window rules --

hl.window_rule({
  name = "floating-windows",
  match = {
    class = "^(hyprland-share-picker|org.kde.dolphin)$"
  },
  float = true
})
