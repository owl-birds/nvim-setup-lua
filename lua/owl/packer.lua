-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
 }
 -- theme
 use 'folke/tokyonight.nvim'
 -- Treesitter -- more colors
 use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
 use('nvim-treesitter/playground')
 -- harpoon
 use('ThePrimeagen/harpoon')
 -- undotree
 -- Undotree visualizes the undo history and makes it easy to browse and switch between different undo branches. You may be wondering, what are undo "branches" anyway? They're a feature of Vim that allow you to go back to a prior state even after it has been overwritten by later edits.
 use("mbbill/undotree")
 -- tpope/vim-fugitive
 use("tpope/vim-fugitive")
 use {
	 'VonHeikemen/lsp-zero.nvim',
	 branch = 'v1.x',
	 requires = {
		 -- LSP Support
		 {'neovim/nvim-lspconfig'},             -- Required
		 {'williamboman/mason.nvim'},           -- Optional
		 {'williamboman/mason-lspconfig.nvim'}, -- Optional

		 -- Autocompletion
		 {'hrsh7th/nvim-cmp'},         -- Required
		 {'hrsh7th/cmp-nvim-lsp'},     -- Required
		 {'hrsh7th/cmp-buffer'},       -- Optional
		 {'hrsh7th/cmp-path'},         -- Optional
		 {'saadparwaiz1/cmp_luasnip'}, -- Optional
		 {'hrsh7th/cmp-nvim-lua'},     -- Optional

		 -- Snippets
		 {'L3MON4D3/LuaSnip'},             -- Required
		 {'rafamadriz/friendly-snippets'}, -- Optional
	 }
 }
end)

