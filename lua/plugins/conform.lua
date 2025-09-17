require("conform").setup({
  formatters_by_ft = {
    -- lua = { "stylua" },
    -- rust = { "rustfmt" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    json = { "prettier" },
    html = { "prettier" },
    css = { "prettier" },
    go = { "gofmt" },
    python = { "black" },
  },

  format_on_save = {
    lsp_fallback = true,
    timeout_ms = 3000,
  }
})
