require("lazy").setup({
  -- themes
  { "folke/tokyonight.nvim" },

  -- lsp
  { "neovim/nvim-lspconfig" },

  -- mason
  { "williamboman/mason.nvim", config = function() require("plugins.mason") end },
  { "williamboman/mason-lspconfig.nvim" },

  -- autocompletion
  { "hrsh7th/nvim-cmp", config = function() require("plugins.autocomplete") end },
  { "hrsh7th/cmp-nvim-lsp" },
  { "L3MON4D3/LuaSnip" },

  -- treesitter
  { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", config = function() require("plugins.treesitter") end },

  -- error lens
  { "folke/trouble.nvim", config = function() require("trouble").setup{} end },

  -- formatting
  { "stevearc/conform.nvim", config = function() require("plugins.conform") end },

  -- colorscheme
  { "sainnhe/sonokai" },
  { "morhetz/gruvbox" },

  { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup{} end },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function()
      require("ibl").setup({
        indent = {
          char = "│",
        },
        scope = {
          enabled = true,
        },
      })
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("plugins.nvim-tree")
    end,
  },
})
