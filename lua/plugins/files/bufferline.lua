return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function ()
		local bufferline = require("bufferline")
		bufferline.setup{
			options = {

				numbers = "ordinal",
				separator_style = "slant",
				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(count, level, diagnostics_dict, context)
					local icon = level:match("error") and " " or " "
					return " " .. icon .. count
				end,
				get_element_icon = function(element)
				  -- element consists of {filetype: string, path: string, extension: string, directory: string}
				  -- This can be used to change how bufferline fetches the icon
				  -- for an element e.g. a buffer or a tab.
				  -- e.g.
				  local icon hl = require('nvim-web-devicons').get_icon_by_filetype(element.filetype, { default = false })
				  return icon, hl
				end,
				color_icons = true,

			}
		}
	end
}
