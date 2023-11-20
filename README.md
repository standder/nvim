# neovim personal config file

## feature
1. use lua only
2. use maeson lsp config to implement automatic completion

## difference
1. remove coc(include coc-setting.json)
2. new theme -- tokyo night

## how to install
```
git clone https://github.com/standder/nvim.git ~/.config/nvim
```

## config keymap
```
<Your editor> ~/.config/nvim/lua/base/maps.lua
```
## personal keymap

### normal mode keymaps
|key |function |
| :--: | :--:|
|space|leader key | 
|leader + w|save | 
|leader + q|quit | 
|leader + wq|save and quit | 


### plugins keymaps
#### neovim tree
| key| function|
| :--: | :--:|
|alt + m|open neovim tree | 

#### toggleterm
| key| function|
| :--: | :--:|
|alt + t|open or close terminal  | 

