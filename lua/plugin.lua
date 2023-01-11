
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'vim-airline/vim-airline'
  use 'neoclide/coc.nvim'
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
use 'nvim-telescope/telescope.nvim'
use 'sharkdp/fd'
use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}
use 'sainnhe/everforest'
end)
