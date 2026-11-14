local telescope = require("telescope")

telescope.setup({
  defaults = {
    file_ignore_patterns = { "node_modules", "%.git[/\\]", "dist[/\\]", "%.next[/\\]" }
  },
  pickers = {
    find_files = { hidden = true },
  },
})
pcall(telescope.load_extension, "fzf")

return telescope
