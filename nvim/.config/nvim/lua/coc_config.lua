helpers = require('helpers')

vim.api.nvim_set_keymap('n', '[g', '<Plug>(coc-diagnostic-prev)', { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', ']g', '<Plug>(coc-diagnostic-next)', { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', 'gd', '<Plug>(coc-definition)', { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', 'gy', '<Plug>(coc-type-definition)', { noremap = false, silent = true})




