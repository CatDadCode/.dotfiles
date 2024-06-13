return {
	-- https://github.com/catppuccin/nvim/discussions/323#discussioncomment-3952454
	{
		"catppuccin/nvim",
		lazy = false,
		priority = 10000,
		name = "catppuccin",
		opts = {
			flavour = "mocha",
			transparent_background = false,
			color_overrides = {
				mocha = {
					text = "#F4CDE9",
					subtext1 = "#DEBAD4",
					subtext0 = "#C8A6BE",
					overlay2 = "#B293A8",
					overlay1 = "#9C7F92",
					overlay0 = "#866C7D",
					surface2 = "#705867",
					surface1 = "#5A4551",
					surface0 = "#44313B",
					base = "#352939",
					mantle = "#211924",
					crust = "#1a1016",
				},
			},
		},
	},
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 10000,
		opts = { contrast = "hard", transparent_mode = false },
	},
	{ "LazyVim/LazyVim", opts = { colorscheme = "catppuccin" } },
}
