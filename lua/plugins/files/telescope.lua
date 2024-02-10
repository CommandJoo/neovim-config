return {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim', },
	}, {
	"nvim-telescope/telescope-ui-select.nvim",
	config = function()
		local tele = require("telescope")
		tele.setup {
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown {
						-- even more opts
					}
				}
			}
		}
		tele.load_extension("ui-select")
	end
},{
	"nvim-telescope/telescope-project.nvim",
	config = function()
		local tele = require("telescope")
		tele.setup {
			extensions = {
				["project"] = {
					require("telescope.themes").get_dropdown {
						-- even more opts
					}
				}
			}
		}
		tele.load_extension("project")
	end
},{
	"nvim-telescope/telescope-media-files.nvim",
	dependencies = {"nvim-lua/popup.nvim"},
	config = function()
		local tele = require("telescope")
		tele.setup {
			extensions = {
				media_files = {
					-- filetypes whitelist
					-- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
					filetypes = {"png", "webp", "jpg", "jpeg"},
					-- find command (defaults to `fd`)
					find_cmd = "rg"
				}
			}
		}
		tele.load_extension("media_files")
	end
}

}
