-- pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration
local config = wezterm.config_builder()

local act = wezterm.action

-- Configs following
config.font_size = 20
config.font = wezterm.font_with_fallback({
	{ family = "Iosevka", weight = "Book" },
	{ family = "0xProto Nerd Font Mono", weight = "Book" },
})
config.window_decorations = "RESIZE"
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.color_scheme = "Tokyo Night"
config.window_close_confirmation = "NeverPrompt"

config.window_background_opacity = 0.9

config.keys = {
	{ key = "RightArrow", mods = "CMD", action = act({ ActivateTabRelative = 1 }) },
	{ key = "LeftArrow", mods = "CMD", action = act({ ActivateTabRelative = -1 }) },
	{ key = "N", mods = "CMD", action = act.ToggleFullScreen },
}

return config
