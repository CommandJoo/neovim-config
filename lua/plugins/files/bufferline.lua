return {
	'akinsho/bufferline.nvim',
	version = "4.6.1",
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function ()
		local bufferline = require("bufferline")
		bufferline.setup{
			options = {
				numbers = "ordinal",
				seperator_style = "thin",
				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(count, level, diagnostics_dict, context)
					local icon = level:match("error") and " " or " "
					return " " .. icon .. count
				end,
				get_element_icon = function(element)
				  local icon hl = require('nvim-web-devicons').get_icon_by_filetype(element.filetype, { default = false })
				  return icon, hl
				end,
				color_icons = true,
			}
		}
	end
}
