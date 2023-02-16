# neovim 配置文件
## 利用coc.nvim作为补全插件
通过coc安装了coc-clangd、coc-markdownlint、coc-sumneko-lua、coc-json、coc-tsserver

## 补全方案

利用coc.nvim作为补全插件

coc-settings.json文件中只有go语言的lsp

go语言的lsp——gopls需要自行安装，安装方式（todo：gopls安装方式）

其余语言请安装对应语言的lsp进行使用
## 配色方案

除neovim自带的配色方案外还安装了everforest的主题配色方案

通过neovim命令:colorscheme everforset进行调整

## 文件搜索
配置了nvim-tree

通过telescope实现文件查找与文件中关键字查找

### 注意事项
为保证telescope文件中查找功能正常使用，需要通过包管理器安装ripgrep(windows用户自求多福)。

## 虚拟终端

配置文件为lua/toggle.lua

通过toggleterm实现nvim内使用终端

启动toggleterm的快捷键为<alt>+t


## 插件管理
以packer作为插件管理器

packer配置文件位置为：lua/plugin.lua
