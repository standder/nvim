require'nvim-treesitter.configs'.setup {
  
  ensure_installed = {"vim","lua","c","cpp","python","rust","go","bash"},

  auto_install = true,
  highlight = {enable = true},
  indent = {enable = true},


  rainbow = {
    enable = true,
    extanded_mode = true,
    max_file_lines = nil,
  }
}
