local function map(mode, binding, command)
	vim.keymap.set(mode, binding, command)
end

local function nmap(binding, command)
	map("n", binding, command)
end
local function imap(binding, command)
	map("i", binding, command)
end
-- Clear Highlighting
nmap("<leader>nh", ":ColorClear<CR>:noh<CR>")

-- NeoTree opening = Shift + T
nmap("T", ":Neotree filesystem toggle left<CR>")

-- Telescope Bindings
nmap("<leader>ff", ":Telescope find_files<CR>")
nmap("<leader>fg", ":Telescope live_grep<CR>")
nmap("<leader>fh", ":Telescope oldfiles<CR>")

nmap("<C-t>", ":set splitbelow<CR>:8sp<CR>:set nosplitbelow<CR>:enew<CR>:Neomux<CR>")

-- Color Highlighting
nmap("<leader>hc", ":ColorHighlight<CR>")

nmap("<C-Right>", ":bnext<CR>")
nmap("<C-Left>", ":bprevious<CR>")
