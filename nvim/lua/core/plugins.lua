local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({
  defaults = {
    lazy = true,
    version = nil,
  },
  rocks = {
    enabled = false,
  },
  spec = {
    -- Themes
    "Mofiqul/vscode.nvim",
    "lunarvim/darkplus.nvim",
    "marko-cerovac/material.nvim",
    "navarasu/onedark.nvim",
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
    "rebelot/kanagawa.nvim",
    "EdenEast/nightfox.nvim",
    "aktersnurra/no-clown-fiesta.nvim",
    "marekh19/meowsoot.nvim",
    "oskarnurm/koda.nvim",
    -----
    "NvChad/nvim-colorizer.lua",
    "windwp/nvim-autopairs",
    {
      "kylechui/nvim-surround",
      version = "^4.0.0",
      event = "VeryLazy",
    },
    {
      "lukas-reineke/indent-blankline.nvim",
      main = "ibl",
    },
    { 'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons' },
    {
      'nvim-lualine/lualine.nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' },
    },
    {
      'stevearc/oil.nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' },
      lazy = false
    },
    {
      "MaximilianLloyd/ascii.nvim",
      dependencies = { "MunifTanjim/nui.nvim" },
    },
    {
      'goolord/alpha-nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' },
    },
    'neovim/nvim-lspconfig',
    {
      'saghen/blink.cmp',
      version = '1.*',
      dependencies = { 'rafamadriz/friendly-snippets' }
    },
    {
      'nvim-telescope/telescope.nvim',
      branch = 'master',
      dependencies = {
        { 'nvim-lua/plenary.nvim' },
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
      }
    },
    {
      'nvim-treesitter/nvim-treesitter',
      lazy = false,
      build = ':TSUpdate'
    }
  }
})
