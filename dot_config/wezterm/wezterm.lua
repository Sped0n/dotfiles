-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- underline
config.underline_thickness = "250%"
config.cursor_thickness = "80%"
config.default_cursor_style = "SteadyBar"

-- font
config.font = wezterm.font("GeistMono Nerd Font", { weight = "DemiBold" })
config.font_size = 14.5
config.line_height = 1.2

-- window
config.window_decorations = "RESIZE"
config.window_padding = {
	left = "1%",
	right = "1%",
	top = "1%",
	bottom = "1%",
}

-- tab bar
config.use_fancy_tab_bar = false
config.show_new_tab_button_in_tab_bar = false
config.force_reverse_video_cursor = true
config.color_scheme = "Gruvbox Dark (Gogh)"

-- config.colors = {
-- 	foreground = "#dcd7ba",
-- 	background = "#1f1f28",
--
-- 	cursor_bg = "#c8c093",
-- 	cursor_fg = "#c8c093",
-- 	cursor_border = "#c8c093",
--
-- 	selection_fg = "#c8c093",
-- 	selection_bg = "#2d4f67",
--
-- 	scrollbar_thumb = "#16161d",
-- 	split = "#16161d",
--
-- 	ansi = { "#090618", "#c34043", "#76946a", "#c0a36e", "#7e9cd8", "#957fb8", "#6a9589", "#c8c093" },
-- 	brights = { "#727169", "#e82424", "#98bb6c", "#e6c384", "#7fb4ca", "#938aa9", "#7aa89f", "#dcd7ba" },
-- 	indexed = { [16] = "#ffa066", [17] = "#ff5d62" },
-- 	tab_bar = {
-- 		background = "1F1F28",
--
-- 		active_tab = {
-- 			fg_color = "#1F1F28",
-- 			bg_color = "#DCD7BA",
-- 			intensity = "Bold",
-- 		},
--
-- 		inactive_tab = {
-- 			fg_color = "#DCD7BA",
-- 			bg_color = "#1F1F28",
-- 		},
-- 	},
-- }

-- fps
config.max_fps = 120
config.front_end = "WebGpu"

-- scrollback line
config.scrollback_lines = 2500

-- and finally, return the configuration to wezterm
return config
