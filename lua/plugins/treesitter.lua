require("nvim-treesitter.configs").setup({
  ensure_installed = { "go", "c", "cpp", "typescript", "javascript", "python", "lua" },
  highlight = { enable = true },
  indent = { enable = true },
})
