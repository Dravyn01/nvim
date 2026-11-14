local map = vim.keymap.set
local opts = { noremap = true, silent = true }

local function o(desc)
  return vim.tbl_extend("force", opts, { desc = desc })
end

map("n", ";", ":", opts)

map("n", "<leader>w", ":w<CR>", o("Save"))
map("n", "<leader>q", ":q<CR>", o("Quit"))
map("n", "<leader>o", ":NvimTreeToggle<CR>", o("Toggle tree"))

-- telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", o("Find files"))
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", o("Grep ในโปรเจกต์"))
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", o("Buffers"))
map("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", o("ไฟล์ที่เปิดล่าสุด"))

vim.o.updatetime = 250
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false, scope = "cursor" })
  end
})

vim.keymap.set("n", "<C-k>", vim.lsp.buf.hover, { noremap = true, silent = true })
