local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.tabstop = 8
opt.shiftwidth = 8 
opt.expandtab = true 
opt.autoindent = true 

opt.wrap = false

opt.mouse:append("a")

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
opt.signcolumn = "yes"

opt.swapfile = false
opt.autoread  = true

vim.cmd[[colorscheme tokyonight-storm]]
