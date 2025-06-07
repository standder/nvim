vim.g.mapleader = " "

local map = vim.keymap

map.set('i','jk','<ESC>')

map.set('v','J',":m '>+1<cr>gv=gv")
map.set('v','K',":m '<-2<cr>gv=gv")

map.set('n','<leader>gh',":vsp ")
map.set('n','<leader>gv',":sp ")


-- no high light
map.set('n','<leader>nh',":nohl<cr> ")

-- move
map.set('n','<C-h>','<C-w>h')
map.set('n','<C-j>','<C-w>j')
map.set('n','<C-k>','<C-w>k')
map.set('n','<C-l>','<C-w>l')

-- nvim-tree
map.set('n','<C-m>',':NvimTreeToggle<CR>')

--bufferline
map.set('n','<A-h>',":BufferLineCyclePrev<CR>",opt)
map.set('n','<A-l>',":BufferLineCycleNext<CR>",opt)
map.set('n','<A-c>',":BufferLinePickClose<CR>",opt)

--terminal
map.set('n','<A-t>',':ToggleTerm<cr>',{noremap = true, silent = true})
map.set('t','<A-t>','<C-\\><C-n>:bdelete!%<cr>',{noremap = true, silent = true})
map.set('t','<esc>','<C-\\><C-n>:bdelete!%<cr>',{noremap = true, silent = true})
map.set('t','<A-k>','<C-w>k')

--save and quit
map.set('n','<leader>w',":w<cr> ")
map.set('n','<leader>q',":q<cr> ")
map.set('n','<leader>wq',":wq<cr> ")


map.set('n','<leader>gg',':LazyGit<CR>',opt)

--vim.api.nvim_buf_set_keymap(4,'t','<esc>')
