# neovim personal config file

## feature
1. use lua only
2. use mason lsp config to implement automatic completion

## how to install
```
git clone https://github.com/standder/nvim.git ~/.config/nvim
```

## keymap config file
```
nvim ~/.config/nvim/lua/base/maps.lua
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
|alt + m|open  or close neovim tree |

#### toggleterm
| key| function|
| :--: | :--:|
| ctrl + \ | open or close terminal  |

#### telescope

| key  | function |
| :----: | :--------: |
| leader + ff | find file |
| leader+fg | live grep |
| leader + fb | find buffer |
| leader + fh | find help for neovim |

## lsp

This config file use Mason for manage lsp.

so you can download lsp from:

```
:Mason
```

When you finish download your lsp you need to `lua/plugins/lsp.lua` config.

for example you need to config gopls:

```
require("lspconfig").gopls.setup{
	capabilitles = capabilities,
}
```

If gopls in your `/bin` or `/usr/bin`,you need to config by:

```
require("lspconfig").gopls.setup{}
```

