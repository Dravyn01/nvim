require("nvim-treesitter").install({
  "lua", "javascript", "typescript", "tsx",
  "html", "css", "json",
  "python", "cpp", "c", "rust",
  "powershell", "vim", "vimdoc",
})

vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    pcall(vim.treesitter.start, args.buf) -- เปิด highlight
  end,
})
