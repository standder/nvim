require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({

  ensure_installed = {
    "lua_ls",
    "clangd",
    "gopls",
    "pyright",
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}

require("lspconfig").clangd.setup {
}

require("lspconfig").gopls.setup {
  capabilities = capabilities,
}

require("lspconfig").pyright.setup {
  capabilities = capabilities,
}

require("lspconfig").rust_analyzer.setup {
  capabilities = capabilities,
}

require("lspconfig").foam_ls.setup{
        capabilities = capabilities,
}

require("lspconfig").r_language_server.setup{
        capabilities = capabilities,
}

require("lspconfig").bashls.setup{
        capabilities = capabilities,
}

require("lspconfig").rust_analyzer.setup{
        capabilities = capabilities,
}
