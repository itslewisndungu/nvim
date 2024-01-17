-- This file can be loaded by calling `lua require('useins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'

  -- Highlight, edit, and navigate code
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  }

  -- Additional text objects via treesitter
  use {
    'nvim-treesitter/nvim-treesitter-textobjects',
    after = 'nvim-treesitter',
  }

  -- Add indentation guides even on blank lines
  use 'lukas-reineke/indent-blankline.nvim'

  -- Comment stuff out
  use 'tpope/vim-commentary'
  -- use 'tomtom/tcomment_vim'

  -- Color the code
  use 'nvim-treesitter/playground'
  use 'nvim-treesitter/nvim-treesitter-context'

  -- telescope
  use 'sharkdp/fd'
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.4',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use 'nvim-tree/nvim-web-devicons'

  use 'ThePrimeagen/harpoon'

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'

  use 'sbdchd/neoformat'
  use 'wakatime/vim-wakatime'
  use 'simrat39/rust-tools.nvim'
  use 'mbbill/undotree'
  use {
    'j-hui/fidget.nvim',
    tag = 'legacy'
  }

  use {'github/copilot.vim', branch = 'release' }

  use {
    'neovim/nvim-lspconfig',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      {'folke/neodev.nvim'},
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }
end)
