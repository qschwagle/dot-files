vim.cmd [[packadd packer.nvim]]

require 'packer'.startup(function(use)
    use { 'wbthomason/packer.nvim' }

    use { 'kyazdani42/nvim-web-devicons' }

    use { 'kyazdani42/nvim-tree.lua' }

    use { 'nvim-telescope/telescope.nvim' }

    use { 'rhysd/vim-clang-format' }

    use { 'embear/vim-localvimrc' }

    use { 'rmagatti/auto-session' }

    use { 'mfussenegger/nvim-dap' }

    use { 'rcarriga/nvim-dap-ui' }

    use { 'editorconfig/editorconfig' }

    use { 'hoob3rt/lualine.nvim' }

    use { 'kdheepak/tabline.nvim' }

    use { "catppuccin/nvim", as = "catppuccin" }

    use { 'neovim/nvim-lspconfig' }
end)

require 'telescope_config'
require 'web_devicons_config'
require 'tree_config'
require 'clang_format_config'
require 'auto_session_config'
require 'dap_config'
require 'dap_ui_config'
require 'tabline_nvim_config'
require 'catppuccin_config'
