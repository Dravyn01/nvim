local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", ";", ":", opts)

map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":q<CR>", opts)
map("n", "<leader>o", ":NvimTreeToggle<CR>", opts)

vim.o.updatetime = 250
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false, scope = "cursor" })
  end
})

vim.keymap.set("n", "<C-k>", vim.lsp.buf.hover, { noremap = true, silent = true })
