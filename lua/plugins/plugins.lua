local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  --theme
  use 'folke/tokyonight.nvim'
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
  use "p00f/nvim-ts-rainbow"

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

  use "numToStr/Comment.nvim" -- gcc和gc注释
  use "windwp/nvim-autopairs" -- 自动补全括号
  use "akinsho/bufferline.nvim" -- 自动补全括号
  use "lewis6991/gitsigns.nvim" -- 自动补全括号

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',  -- 文件检索
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use "sharkdp/fd"
  
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}


  if packer_bootstrap then
    require('packer').sync()
  end
end)
