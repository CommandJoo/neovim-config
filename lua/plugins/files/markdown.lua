return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && yarn install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
	ft = { "markdown" },
	config = function()
		local g = vim.g
		g.mkdp_auto_start = 1
		g.mkdp_auto_close = 1
		g.mkdp_refresh_slow = 0
		g.mkdp_browser = "C:\\Users\\hansj\\AppData\\Local\\Programs\\Opera\\launcher.exe"
	end
}
