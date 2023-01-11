require("base")
require("plugin")
require("maps")
require("n-tree")
require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})
require("toggle")
require("everforest")
vim.cmd "colorscheme everforest"
