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

-- color scheme
config.color_scheme = "VSCodeDark+ (Gogh)"
config.colors = {
	foreground = "#d4d4d4",
	background = "#1f1f1f",

	cursor_bg = "#d4d4d4",
	cursor_fg = "#1f1f1f",
	cursor_border = "#d4d4d4",

	selection_fg = "#dcdcaa",
	selection_bg = "#dcdcaa",

	ansi = {
		"#1f1f1f",
		"#f44747",
		"#608b4e",
		"#dcdcaa",
		"#569cd6",
		"#c678dd",
		"#56b6c2",
		"#d4d4d4",
	},
	brights = {
		"#808080",
		"#f44747",
		"#608b4e",
		"#dcdcaa",
		"#569cd6",
		"#c678dd",
		"#56b6c2",
		"#d4d4d4",
	},
	tab_bar = {
		background = "#333333",

		active_tab = {
			fg_color = "#d4d4d4",
			bg_color = "#1f1f1f",
			intensity = "Bold",
		},

		inactive_tab = {
			fg_color = "#d4d4d4",
			bg_color = "#333333",
		},
	},
}

-- fps
config.max_fps = 120
config.front_end = "WebGpu"

-- scrollback line
config.scrollback_lines = 2500

-- and finally, return the configuration to wezterm
return config
