local nnoremap = require("esteban.keymap").nnoremap


nnoremap("<leader>e", "<cmd>Ex<CR>")
--nnoremap("<leader>;", "<cmd>buffers<CR>")
--nnoremap("<C-p>", "<cmd>files<CR>")

--nnoremap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
nnoremap("<C-p>", "<cmd>lua require('telescope.builtin').find_files()<cr>")
nnoremap("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap("<leader>;", "<cmd>lua require('telescope.builtin').buffers()<cr>")
--nnoremap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
nnoremap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")

nnoremap("<C-j>", "<cmd>%!jq<CR>")
nnoremap("<C-l>", "<cmd>%!jq -c<CR>")

vim.api.nvim_set_keymap('t', '<ESC>', [[<C-\><C-n>]], { noremap = true })
--vim.api.nvim_set_keymap('t', '<C-d>', [[<C-\><C-d>]], { noremap = true })
