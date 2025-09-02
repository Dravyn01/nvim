local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- remap ; -> :
map("n", ";", ":", opts)

-- custom leader mappings (ตัวอย่าง)
map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":q<CR>", opts)
map("n", "<leader>o", ":NvimTreeToggle<CR>", opts)
