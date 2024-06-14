local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- config.color_scheme = "Dracula"
-- config.color_scheme = "OneDark (base16)"
config.color_scheme = "Night Owl (Gogh)"
-- sakura for when using transparent background
-- config.window_background_opacity = 0.80
-- 0.80
config.window_frame = {

	font_size = 40.0,
}
wezterm.font("SF Mono", { weight = "Medium", stretch = "Normal", style = "Normal" }) -- /Library/Fonts/SF-Mono-Medium.otf, CoreText

config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = true
config.window_decorations = "RESIZE"
--test

return config
