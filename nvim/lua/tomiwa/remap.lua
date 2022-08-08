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

-- remap switching tabs using bufferline
nnoremap("<leader><Tab>", "<cmd>BufferLineCycleNext<cr>")
nnoremap("<leader><s-Tab>", "<cmd>BufferLineCyclePrev<cr>")
nnoremap("<leader>1<Tab>", "<Cmd>BufferLineGoToBuffer 1<CR>")
nnoremap("<leader>2<Tab>", "<Cmd>BufferLineGoToBuffer 2<CR>")
nnoremap("<leader>3<Tab>", "<Cmd>BufferLineGoToBuffer 3<CR>")
nnoremap("<leader>4<Tab>", "<Cmd>BufferLineGoToBuffer 4<CR>")
nnoremap("<leader>5<Tab>", "<Cmd>BufferLineGoToBuffer 5<CR>")
nnoremap("<leader>6<Tab>", "<Cmd>BufferLineGoToBuffer 6<CR>")
nnoremap("<leader>7<Tab>", "<Cmd>BufferLineGoToBuffer 7<CR>")
nnoremap("<leader>8<Tab>", "<Cmd>BufferLineGoToBuffer 8<CR>")
nnoremap("<leader>9<Tab>", "<Cmd>BufferLineGoToBuffer 9<CR>")
nnoremap("<leader>$<Tab>", "<Cmd>BufferLineGoToBuffer -1<CR>")
nnoremap("<leader>x<Tab>", "<Cmd>BufferLinePickClose<CR>")

-- format with prettier
nnoremap("<leader>gp", "<cmd>Prettier<cr>")
