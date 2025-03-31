vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
   use 'wbthomason/packer.nvim'

  use 'sainnhe/everforest'
  use {
    'nvim-lualine/lualine.nvim',
   requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
  use{
  'nvim-tree/nvim-tree.lua',
  requirs = {
    'nvim-tree/nvim-web-devicons'
    }
  }

  --highlight
  use 'nvim-treesitter/nvim-treesitter'
  --use "p00f/nvim-ts-rainbow"

  --lsp
  use{
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig'
  }

  --cmp
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip" -- snippets引擎，不装这个自动补全会出问题
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
  use "hrsh7th/cmp-path" -- 文件路径
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/cmp-buffer"


  use "numToStr/Comment.nvim" -- gcc和gc注释
  use "windwp/nvim-autopairs" -- 自动补全括号
  use "akinsho/bufferline.nvim" -- 自动补全括号
  use "lewis6991/gitsigns.nvim" -- git

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',  -- 文件检索
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  --terminal
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}
  --makrdown_preview
use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
})

use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
use({
        "kdheepak/lazygit.nvim",
        requirs = {
                "nvim-lua/plenary.nvim"
                }
        })
end)
