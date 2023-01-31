-- This file can be loaded by calling `lua require('plugins')`

-- Only require if packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
		'marko-cerovac/material.nvim',
		as = 'material',
		config = function()
			vim.g.material_style = 'oceanic'
			vim.cmd('colorscheme material')
		end
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		{ run = ':TSUpdate' }
	}
    use 'nvim-treesitter/playground'
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'
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
		},
    use 'rust-lang/rust.vim',
    use {
        'windwp/nvim-autopairs',
        config = function() require("nvim-autopairs").setup {}
        end }
    }
end)
