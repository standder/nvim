local opt = vim.opt
local neovide = vim.g.neovide

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

if vim.g.neovide then
        vim.o.guifont = "Hack Nerd Font:h10"
        neovide_scale_factor = 1.0
        neovide_position_animation_length=0.2
        neovide_refresh_rate=144
        neovide_fullscreen = false
        neovide_remember_window_size = true
        neovide_cursor_antialiasing = true

end

vim.cmd[[colorscheme everforest]]

