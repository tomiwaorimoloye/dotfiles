local nnoremap = require("tomiwa.keymap").nnoremap
local vnoremap = require("tomiwa.keymap").vnoremap

nnoremap("<leader>e", "<cmd>NvimTreeFocus<CR>")

-- for toggling the material theme 
nnoremap("<leader>mm", "<cmd>lua require('material.functions').toggle_style()<CR>", { silent = true })

-- remap for telescope commands
nnoremap("<leader>ff", "<cmd>Telescope find_files<cr>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<cr>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<cr>")

-- remap for switching tabs
nnoremap("<leader>w", "<c-w>")

-- remap for splitting buffers
nnoremap("<leader>s", "<cmd>split<cr>")
nnoremap("<leader>vs", "<cmd>vsplit<cr>")

-- remap switching tabs
nnoremap("<leader><Tab>", "<cmd>tabn<cr>")
nnoremap("<leader><s-Tab>", "<cmd>tabp<cr>")
nnoremap("<c-t>", "<cmd>tabedit<cr>")

-- moving code between lines
nnoremap("<s-j>", "<cmd>move +1<cr>")
nnoremap("<s-k>", "<cmd>move -2<cr>")





