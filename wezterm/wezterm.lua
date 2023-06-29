-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'

-- font
-- config.font = wezterm.font 'JetBrainsMonoNL Nerd Font'


--
--
-- #### MY Configs ####
--
--
config.term = "xterm-256color"

-- tab configurations (old tab style, move to bottom)
-- config.hide_tab_bar_if_only_one_tab = true
-- config.enable_tab_bar = false
config.use_fancy_tab_bar = false
-- config.tab_bar_at_bottom = true
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
-- config.window_decorations = "RESIZE"
-- config.integrated_title_button_style = "Gnome"
-- config.integrated_title_button_style = "MacOsNative"
-- config.integrated_title_button_style = "Windows"


-- config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }
config.window_padding = { left = 0, top = 0, bottom = 0 }
-- config.enable_scroll_bar = true

-- config.window_frame = {
  -- border_left_width = '0.5cell',
  -- border_left_width = '0.5cell',
  -- border_right_width = '0.5cell',
  -- border_bottom_height = '0.25cell',
  -- border_top_height = '0.25cell',
  -- border_left_color = 'purple',
  -- border_right_color = 'purple',
  -- border_bottom_color = 'purple',
  -- border_top_color = 'purple',
-- }

-- font
-- config.font = wezterm.font 'JetBrainsMonoNL Nerd Font'
-- config.font = wezterm.font 'Caskaydia Cove Nerd Font'
-- config.font = wezterm.font 'Hack Nerd Font FC Ligatured'
-- config.font = wezterm.font 'Hasklug Nerd Font'

	config.font = wezterm.font({
		-- family = "Caskaydia Cove Nerd Font",
		family = "Hasklug Nerd Font",
		weight = "Regular",
		stretch = "Normal",
		style = "Normal",
		-- harfbuzz_features = { "calt=1", "clig=1", "liga=1" },
		-- scale = 1.0
	})
config.font_size = 11.5
-- config.font_size = 11

-- config.front_end = "OpenGL"
config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"


-- ###### Wezterm wouldn't let me hold a key down for caps or Secondary characters
-- ###### ime to false restores this functionality for my moonlander
-- phewwwww
config.use_ime = false

-- config.enable_wayland = true
config.enable_wayland = false

-------- wayland configs?? test




-- and finally, return the configuration to wezterm
return config

