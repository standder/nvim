vim.g.mapleader = " "

local map = vim.keymap


map.set('n','<leader>q','<Cmd>q<CR>')
map.set('n','<leader>w','<Cmd>w<CR>')
map.set('n','<leader>wq','<Cmd>wq<CR>')
map.set('i','<C-a>','<Esc>gg<S-v>G')
map.set('n','<A-m>',':NvimTreeToggle<CR>')
map.set('n','<A-f>',':NvimTreeFocus<CR>')


map.set('n','<leader>gv',':vsp ')
map.set('n','<leader>gh',':sp ')
map.set('n','<leader>gc','<C-w>c')
map.set('n','<leader>go','<C-w>o')

map.set('n','<C-h>','<C-w>h')
map.set('n','<C-j>','<C-w>j')
map.set('n','<C-k>','<C-w>k')
map.set('n','<C-l>','<C-w>l')


map.set('n','<A-t>',':ToggleTerm<cr>',{noremap = true, silent = true})
map.set('t','<A-t>','<C-\\><C-n>:bdelete!%<cr>',{noremap = true, silent = true})
map.set('t','<esc>','<C-\\><C-n>:bdelete!%<cr>',{noremap = true, silent = true})
map.set('t','<A-k>','<C-w>k')


map.set('n','<leader>ra',':Ranger<cr>')



