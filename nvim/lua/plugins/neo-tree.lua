return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			window = {
				width = 32,
			},
			filesystem = {
				filtered_items = {
					hide_dotfiles = false, -- Show dotfiles
					hide_gitignored = false, -- Show files ignored by Git
				},
			},
		})
	end,
}
