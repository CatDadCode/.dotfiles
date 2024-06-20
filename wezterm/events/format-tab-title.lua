local wezterm = require("wezterm")
local config = require("config")

local builtin_color_schemes = wezterm.get_builtin_color_schemes()

local section_separators = {
	left = "",
	right = "",
}

wezterm.on("format-tab-title", function(tab)
	local pane_title = tab.active_pane.title
	local user_title = tab.active_pane.user_vars.panetitle
	if user_title ~= nil and #user_title > 0 then
		pane_title = user_title
	end
	local colors = (config.color_schemes[config.color_scheme] or builtin_color_schemes[config.color_scheme]).tab_bar
	if not tab.is_active then
		return {
			-- { Background = { Color = colors.active_tab.fg_color } },
			-- { Foreground = { Color = colors.inactive_tab.bg_color } },
			-- { Text = " " },
			-- { Text = section_separators.right },
			{ Background = { Color = colors.inactive_tab.bg_color } },
			{ Foreground = { Color = colors.inactive_tab.fg_color } },
			{ Text = " " .. pane_title .. " " },
			-- { Background = { Color = colors.active_tab.fg_color } },
			-- { Foreground = { Color = colors.inactive_tab.bg_color } },
			-- { Text = section_separators.left },
			-- { Text = " " },
		}
	end
	return {
		-- { Attribute = { Intensity = "Bold" } },
		-- { Background = { Color = colors.active_tab.fg_color } },
		-- { Foreground = { Color = colors.active_tab.bg_color } },
		-- { Text = " " },
		-- { Text = section_separators.right },
		{ Background = { Color = colors.active_tab.bg_color } },
		{ Foreground = { Color = colors.active_tab.fg_color } },
		{ Text = " " .. pane_title .. " " },
		-- { Background = { Color = colors.active_tab.fg_color } },
		-- { Foreground = { Color = colors.active_tab.bg_color } },
		-- { Text = section_separators.left },
		-- { Text = " " },
	}
end)
