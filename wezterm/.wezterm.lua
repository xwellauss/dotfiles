local wezterm = require 'wezterm'
local config = wezterm.config_builder()

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

config.window_close_confirmation = "NeverPrompt"
config.audible_bell = "Disabled"

config.max_fps = 120
config.cursor_blink_rate = 800
config.animation_fps = 1
config.front_end = "WebGpu"

theme_dark_plus = {
  foreground = "#ffffff",
  background = "#111111",

  cursor_bg = "#ffffff",
  cursor_fg = "#000000",
  cursor_border = "#ffffff",

  selection_bg = "#264F78",
  selection_fg = "#ffffff",

  ansi = { "#000000", "#cd3131", "#0dbc79", "#e5e510", "#2472c8", "#bc3fbc", "#11a8cd", "#ffffff" },
  brights = { "#666666", "#f14c4c", "#23d18b", "#f5f543", "#3b8eea", "#d670d6", "#29b8db", "#e5e5e5" },
}

config.colors = theme_dark_plus

config.default_prog = { 'C:\\msys64\\usr\\bin\\env.exe', 'MSYSTEM=CLANG64', 'CHERE_INVOKING=1', 'bash', '-lc', 'exec zsh' }

config.set_environment_variables = {
    MSYSTEM = 'CLANG64'
}

config.keys = {
	{
		key = 'Enter',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.SplitPane {
			direction = 'Right',
			size = { Percent = 30 },
		}
	},
	{
		key = 'T',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.SpawnCommandInNewTab {
		}
	},

	{ key = 'H', mods = 'CTRL|SHIFT', action = wezterm.action.AdjustPaneSize { 'Left', 3 }},
	{ key = 'L', mods = 'CTRL|SHIFT', action = wezterm.action.AdjustPaneSize { 'Right', 3 }},
	{ key = 'K', mods = 'CTRL|SHIFT', action = wezterm.action.AdjustPaneSize { 'Up', 3 }},
	{ key = 'J', mods = 'CTRL|SHIFT', action = wezterm.action.AdjustPaneSize { 'Down', 3 }},

	{ key = 'h', mods = 'CTRL', action = wezterm.action.ActivatePaneDirection 'Left' },
	{ key = 'l', mods = 'CTRL', action = wezterm.action.ActivatePaneDirection 'Right' },
	{ key = 'k', mods = 'CTRL', action = wezterm.action.ActivatePaneDirection 'Up' },
	{ key = 'j', mods = 'CTRL', action = wezterm.action.ActivatePaneDirection 'Down' },

}

config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.tab_max_width = 32
config.colors.tab_bar = {
  background = "#111111",
  active_tab = {
    bg_color = "#562abf",
    fg_color = "#ffffff",
    intensity = "Bold",
  },
  inactive_tab = {
    bg_color = "#111111",
    fg_color = "#666666",
  },
  inactive_tab_hover = {
    bg_color = "#1a1a1a",
    fg_color = "#ffffff",
  },
  new_tab = {
    bg_color = "#111111",
    fg_color = "#666666",
  },
}
config.tab_bar_style = {
  new_tab = ' + ',
}

config.font = wezterm.font_with_fallback({
  {
    family = 'JetBrainsMono Nerd Font',
    weight = 'Regular',
  },
})


config.font_size = 10

return config
