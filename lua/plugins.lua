vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

-- Fuzzy Search
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Theme
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
	require("rose-pine").setup()
	vim.cmd('colorscheme rose-pine')
    end
  })

  use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- Rust related plugins
  use 'simrat39/rust-tools.nvim'
  use 'williamboman/mason.nvim'    
  use 'windwp/nvim-autopairs'

  -- Completion framework:
  use 'hrsh7th/nvim-cmp' 
  
  -- LSP completion source:
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig' 
  use 'hrsh7th/cmp-nvim-lsp'
  
  -- Useful completion sources:
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-vsnip'                             
  use 'hrsh7th/cmp-path'                              
  use 'hrsh7th/cmp-buffer'                            
  use 'hrsh7th/vim-vsnip'                             

  -- Debugger
  use 'puremourning/vimspector'
    
end)
