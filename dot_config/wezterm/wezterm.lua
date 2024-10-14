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
config.colors = {
	foreground = "#d4d4d4",
	background = "#1f1f1f",

	cursor_bg = "#d4d4d4",
	cursor_fg = "#1f1f1f",
	cursor_border = "#d4d4d4",

	selection_fg = "#1f1f1f",
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
config.scrollback_lines = 5000

-- keys
config.disable_default_key_bindings = true
local act = wezterm.action
config.keys = {
	-- tab management
	{ key = "t", mods = "SHIFT|CTRL", action = act.SpawnTab("CurrentPaneDomain") },
	{ key = "t", mods = "SUPER", action = act.SpawnTab("CurrentPaneDomain") },
	{ key = "w", mods = "SHIFT|CTRL", action = act.CloseCurrentTab({ confirm = true }) },
	{ key = "w", mods = "SUPER", action = act.CloseCurrentTab({ confirm = true }) },
	{ key = "Tab", mods = "CTRL", action = act.ActivateTabRelative(1) },
	{ key = "Tab", mods = "SHIFT|CTRL", action = act.ActivateTabRelative(-1) },
	{ key = "{", mods = "SUPER", action = act.ActivateTabRelative(-1) },
	{ key = "{", mods = "SHIFT|SUPER", action = act.ActivateTabRelative(-1) },
	{ key = "}", mods = "SUPER", action = act.ActivateTabRelative(1) },
	{ key = "}", mods = "SHIFT|SUPER", action = act.ActivateTabRelative(1) },
	{ key = "1", mods = "SHIFT|CTRL", action = act.ActivateTab(0) },
	{ key = "1", mods = "SUPER", action = act.ActivateTab(0) },
	{ key = "2", mods = "SHIFT|CTRL", action = act.ActivateTab(1) },
	{ key = "2", mods = "SUPER", action = act.ActivateTab(1) },
	{ key = "3", mods = "SHIFT|CTRL", action = act.ActivateTab(2) },
	{ key = "3", mods = "SUPER", action = act.ActivateTab(2) },
	{ key = "4", mods = "SHIFT|CTRL", action = act.ActivateTab(3) },
	{ key = "4", mods = "SUPER", action = act.ActivateTab(3) },
	{ key = "5", mods = "SHIFT|CTRL", action = act.ActivateTab(4) },
	{ key = "5", mods = "SUPER", action = act.ActivateTab(4) },
	{ key = "6", mods = "SHIFT|CTRL", action = act.ActivateTab(5) },
	{ key = "6", mods = "SUPER", action = act.ActivateTab(5) },
	{ key = "7", mods = "SHIFT|CTRL", action = act.ActivateTab(6) },
	{ key = "7", mods = "SUPER", action = act.ActivateTab(6) },
	{ key = "8", mods = "SHIFT|CTRL", action = act.ActivateTab(7) },
	{ key = "8", mods = "SUPER", action = act.ActivateTab(7) },
	{ key = "9", mods = "SHIFT|CTRL", action = act.ActivateTab(-1) },
	{ key = "9", mods = "SUPER", action = act.ActivateTab(-1) },
	-- pane management
	{ key = "-", mods = "SHIFT|CTRL", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "|", mods = "SHIFT|CTRL", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "x", mods = "SHIFT|CTRL", action = act.TogglePaneZoomState },
	{ key = "g", mods = "SHIFT|CTRL", action = act.PaneSelect },
	{ key = "w", mods = "SHIFT|CTRL", action = wezterm.action.CloseCurrentPane({ confirm = true }) },
	{ key = "h", mods = "SHIFT|CTRL", action = act.ActivatePaneDirection("Left") },
	{ key = "l", mods = "SHIFT|CTRL", action = act.ActivatePaneDirection("Right") },
	{ key = "j", mods = "SHIFT|CTRL", action = act.ActivatePaneDirection("Down") },
	{ key = "k", mods = "SHIFT|CTRL", action = act.ActivatePaneDirection("Up") },
	{ key = "h", mods = "SHIFT|ALT|CTRL", action = act.AdjustPaneSize({ "Left", 1 }) },
	{ key = "l", mods = "SHIFT|ALT|CTRL", action = act.AdjustPaneSize({ "Right", 1 }) },
	{ key = "j", mods = "SHIFT|ALT|CTRL", action = act.AdjustPaneSize({ "Down", 1 }) },
	{ key = "k", mods = "SHIFT|ALT|CTRL", action = act.AdjustPaneSize({ "Up", 1 }) },
	-- window management
	{ key = "n", mods = "SHIFT|CTRL", action = act.SpawnWindow },
	{ key = "n", mods = "SUPER", action = act.SpawnWindow },
	-- font size
	{ key = "+", mods = "CTRL", action = act.IncreaseFontSize },
	{ key = "+", mods = "SUPER", action = act.IncreaseFontSize },
	{ key = "-", mods = "CTRL", action = act.DecreaseFontSize },
	{ key = "-", mods = "SUPER", action = act.DecreaseFontSize },
	{ key = "0", mods = "CTRL", action = act.ResetFontSize },
	{ key = "0", mods = "SUPER", action = act.ResetFontSize },
	-- copy and paste
	{ key = "c", mods = "SHIFT|CTRL", action = act.CopyTo("Clipboard") },
	{ key = "c", mods = "SUPER", action = act.CopyTo("Clipboard") },
	{ key = "Copy", mods = "NONE", action = act.CopyTo("Clipboard") },
	{ key = "Paste", mods = "NONE", action = act.PasteFrom("Clipboard") },
	{ key = "v", mods = "SHIFT|CTRL", action = act.PasteFrom("Clipboard") },
	{ key = "v", mods = "SUPER", action = act.PasteFrom("Clipboard") },
	-- search
	{ key = "f", mods = "SHIFT|CTRL", action = act.Search("CurrentSelectionOrEmptyString") },
	{ key = "f", mods = "SUPER", action = act.Search("CurrentSelectionOrEmptyString") },
	-- command palette
	{ key = "P", mods = "CTRL", action = act.ActivateCommandPalette },
	{ key = "P", mods = "SHIFT|CTRL", action = act.ActivateCommandPalette },
	{ key = "p", mods = "SHIFT|CTRL", action = act.ActivateCommandPalette },
	-- others
	{ key = "R", mods = "CTRL", action = act.ReloadConfiguration },
	{ key = "R", mods = "SHIFT|CTRL", action = act.ReloadConfiguration },
	{ key = "r", mods = "SHIFT|CTRL", action = act.ReloadConfiguration },
	{ key = "r", mods = "SUPER", action = act.ReloadConfiguration },
	{ key = "h", mods = "CMD", action = act.HideApplication },
	{ key = "Enter", mods = "ALT", action = act.ToggleFullScreen },
}
config.key_tables = {
	search_mode = {
		{ key = "Enter", mods = "NONE", action = act.CopyMode("PriorMatch") },
		{ key = "Escape", mods = "NONE", action = act.CopyMode("Close") },
		{ key = "n", mods = "CTRL", action = act.CopyMode("NextMatch") },
		{ key = "p", mods = "CTRL", action = act.CopyMode("PriorMatch") },
		{ key = "r", mods = "CTRL", action = act.CopyMode("CycleMatchType") },
		{ key = "u", mods = "CTRL", action = act.CopyMode("ClearPattern") },
		{ key = "PageUp", mods = "NONE", action = act.CopyMode("PriorMatchPage") },
		{ key = "PageDown", mods = "NONE", action = act.CopyMode("NextMatchPage") },
		{ key = "UpArrow", mods = "NONE", action = act.CopyMode("PriorMatch") },
		{ key = "DownArrow", mods = "NONE", action = act.CopyMode("NextMatch") },
	},
}

-- and finally, return the configuration to wezterm
return config
