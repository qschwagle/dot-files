helpers = require('helpers')

-- Telescope Config
helpers.map("n", "<LEADER>ff", ":Telescope find_files<CR>", {})
helpers.map("n", "<LEADER>fg", ":Telescope live_grep<CR>", {})
helpers.map("n", "<LEADER>fb", ":Telescope buffers<CR>", {})
helpers.map("n", "<LEADER>fn", ":Telescope help_tags<CR>", {})
