local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end
config.color_scheme = "Tokyo Night Moon"
config.font_size = 18
config.window_frame = {}
config.font = wezterm.font("JetBrains Mono NL", { weight = "Medium", stretch = "Normal", style = "Normal" }) -- (AKA: JetBrains Mono NL Medium) /Users/amer/Library/Fonts/JetBrainsMonoNL-MediumItalic.ttf, CoreText
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = true
config.window_decorations = "RESIZE"
config.font = wezterm.font("JetBrainsMono Nerd Font Mono", { weight = "Regular", stretch = "Normal", style = "Normal" }) -- (AKA: JetBrainsMono NFM) /Users/amer/Library/Fonts/JetBrainsMonoNerdFontMono-Regular.ttf, CoreText
return config
