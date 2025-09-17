require("lazy").setup({
  -- themes
  { "folke/tokyonight.nvim" },
  { "sainnhe/sonokai" },
  { "morhetz/gruvbox" },
  { "shaunsingh/nord.nvim" },
  { "ntk148v/habamax.nvim", dependencies = { "rktjmp/lush.nvim" } },

  -- lsp
  { "neovim/nvim-lspconfig" },

  -- mason
  { "williamboman/mason-lspconfig.nvim" },
  { "williamboman/mason.nvim" },

  -- autocompletion
  { "hrsh7th/nvim-cmp", config = function() require("plugins.autocomplete") end },
  { "hrsh7th/cmp-nvim-lsp" },
  { "L3MON4D3/LuaSnip" },

  -- treesitter
  { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },

  -- error lens
  { "folke/trouble.nvim", config = function() require("trouble").setup{} end },

  -- formatting
  { "stevearc/conform.nvim", config = function() require("plugins.conform") end },

  -- auto () [] {}
  { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup{} end },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function() require("plugins.indent-line") end,
  },

  -- warning/err/doc too tip
  {'nvimdev/lspsaga.nvim', config = function() require('lspsaga').setup({}) end },

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
