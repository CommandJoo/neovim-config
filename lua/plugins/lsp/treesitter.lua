return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		vim.cmd [[TSUpdate]]
		require("nvim-treesitter.configs").setup({
			auto_install = true
		})
	end
}
