return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim",
	},
	config = function()
		vim.keymap.set("n", "T", ":Neotree filesystem toggle left<CR>")
		require("neo-tree").setup({
			close_if_last_window = false,
			enable_diagnostics = true,
		})
	end,
}
