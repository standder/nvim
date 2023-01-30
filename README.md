# neovim 配置文件
## 利用coc.nvim作为补全插件
通过coc安装了coc-clangd、coc-markdownlint、coc-sumneko-lua、coc-json、coc-tsserver


配置了nvim-tree

## 通过toggleterm实现nvim内使用终端
配置文件为lua/toggle.lua

## 添加了everforest作为配色方案
需要手动在nvim内输入:colorscheme everforest方能一键应用主题

## 以packer作为插件管理器
packer配置文件位置为：lua/plugin.lua

## 注意事项
为了让telescope的查找功能正常使用，需要通过包管理器安装ripgrep。
