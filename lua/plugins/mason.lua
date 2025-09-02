require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = 
    { 
      -- "clangd", 
      -- "lua_ls",
      "gopls",  -- go
      "sqls", -- sql
      "ts_ls",  -- js/ts
      "pyright" , -- python
      "bashls", -- bash
    },
})
