require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = {
    -- "jdtls",
    -- "gopls",
    -- "rust_analyzer",
    "lua_ls",
    "clangd",
    "ts_ls",
    "html",
    "emmet_ls",
    "pyright",
    "powershell_es",
  },
})

-- Lua lsp for neovim
vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          vim.env.VIMRUNTIME,
        },
        checkThirdParty = false,
      },
    },
  },
})

-- clangd: use your existing MSYS2 installation
vim.lsp.config("clangd", {
  cmd = { "C:/msys64/ucrt64/bin/clangd.exe" },
})

vim.lsp.enable({
  "lua_ls",
  "clangd",
  "ts_ls",
  "html",
  "emmet_ls",
  "pyright",
  "powershell_es",
})
