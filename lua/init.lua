require("base")
require("plugin")
require("maps")
require("n-tree")
require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})
require("toggle")
require("everforest")
require("n-telescope")
vim.cmd "colorscheme everforest"
