local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({
  defaults = {
	  lazy = true,
	  version = nil,
  },

  -- Themes
  "Mofiqul/vscode.nvim",
  "ellisonleao/gruvbox.nvim",
  { "bluz71/vim-moonfly-colors", name = "moonfly" },
  "nyoom-engineering/oxocarbon.nvim",
  "Alexis12119/nightly.nvim",
  "felipeagc/fleet-theme-nvim",
  "doums/darcula",
  "junegunn/seoul256.vim",
  "dasupradyumna/midnight.nvim",
  "folke/tokyonight.nvim",
  "NLKNguyen/papercolor-theme",
  "neanias/everforest-nvim",
--  use "morhetz/gruvbox"
  -----
  
  "NvChad/nvim-colorizer.lua",
  "windwp/nvim-autopairs",
  {
    "kylechui/nvim-surround",
    version = "^4.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    -- Optional: See `:h nvim-surround.configuration` and `:h nvim-surround.setup` for details
    -- config = function()
    --     require("nvim-surround").setup({
    --         -- Put your configuration here
    --     })
    -- end
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
  },

  {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},

--  "hiphish/rainbow-delimiters.nvim",

  {
	'nvim-lualine/lualine.nvim',
	dependencies = 
	{
	    'nvim-tree/nvim-web-devicons',
	},
  },

  {
  	"MaximilianLloyd/ascii.nvim",
  	dependencies = {
	   "MunifTanjim/nui.nvim",
	},
  },
  {
	'goolord/alpha-nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
  }, 

  'neovim/nvim-lspconfig',

  {
	  'saghen/blink.cmp',
	  version = '1.*',
	  dependencies = {
		  'rafamadriz/friendly-snippets'
	  }
  },

  {
	'nvim-telescope/telescope.nvim', 
	branch = 'master',
	dependencies = {
		{'nvim-lua/plenary.nvim'},
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	}
  },

  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate'
  }

})
