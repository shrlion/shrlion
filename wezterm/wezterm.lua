local wezterm = require("wezterm")
local mux = wezterm.mux
local dimmer = { brightness = 0.1 }

local config = {
	color_scheme = "Dracula (Official)",
	use_fancy_tab_bar = true,
	window_decorations = "RESIZE",
	hide_mouse_cursor_when_typing = false,
	warn_about_missing_glyphs = false,
	window_background_opacity = 1.0,
}

config.font = wezterm.font_with_fallback({
	"Monaspace Krypton",
	"Cascadia Code",
	"Hack",
})

config.background = {
	{
		source = {
			File = wezterm.config_dir .. "/background-image.jpg",
		},
		hsb = dimmer,
		horizontal_align = "Center",
		attachment = "Fixed",
		repeat_x = "NoRepeat",
		width = "Cover",
		repeat_y = "NoRepeat",
		height = "Cover",
		opacity = 0.95,
	},
}

-- x86_64-pc-windows-msvc - Windows
-- x86_64-unknown-linux-gnu - Linux
-- x86_64-apple-darwin - macOS (Intel)
-- aarch64-apple-darwin - macOS (Apple Silicon)

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	config.default_prog = { "powershell", "-nologo" }
	config.font_size = 12.0
elseif wezterm.target_triple == "x86_64-unknown-linux" then
	config.default_prog = { "bash", "-nologo" }
	config.font_size = 9.0
end

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():set_inner_size(1200, 840)
end)

return config
