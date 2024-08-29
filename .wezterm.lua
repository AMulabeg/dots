local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end
config.color_scheme = "Tokyo Night Moon"
-- config.color_scheme = "Night Owl (Gogh)"
-- config.window_background_opacity = 0.95
-- 0.80
config.font_size = 18

config.window_frame = {}
-- wezterm.font("SF Mono", { weight = "Medium", stretch = "Normal", style = "Normal" }) -- /Library/Fonts/SF-Mono-Medium.otf, CoreText

config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = true
config.window_decorations = "RESIZE"

return config
