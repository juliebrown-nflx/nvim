-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
--	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }


  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = 
  -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }

  

  -- LunarVim/neovim-from-scratch
  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
--  use "williamboman/mason.nvim" -- simple to use language server installer
--  use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer
--  use 'jose-elias-alvarez/null-ls.nvim' -- LSP diagnostics and code actions


  use { "catppuccin/nvim", as = "catppuccin" }

end)

