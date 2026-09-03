-- Input --

hl.config({
    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = false,
        },
    },
})


hl.device({
    name        = "endgame-gear-endgame-gear-op1-8k-gaming-mouse",
    sensitivity = -0.9,
    accel_profile = flat,
})

-- disable ps5 trackpad --
hl.device({
    name        = "sony-interactive-entertainment-dualsense-wireless-controller-touchpad",
    enabled = false
})
