require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = 
    { 
      'jdtls', 
      'gopls', 
      -- 'rust_analyzer', 
      -- 'lua_ls', 
      'tsserver', 
      'html', 
      'emmet_ls',
      'pyright'
    },
})

-- settings language
require('lspconfig').jdtls.setup({})
require('lspconfig').gopls.setup({})
-- require('lspconfig').rust_analyzer.setup()
-- require('lspconfig').lua_ls.setup()
require('lspconfig').ts_ls.setup({})
require('lspconfig').html.setup({})
require('lspconfig').emmet_ls.setup({})
require('lspconfig').pyright.setup({})

-- settings syntax highlighting
require('nvim-treesitter.configs').setup({
  ensure_installed = { 
    --  'lua', 
    'java', 
    'go', 
    -- 'rust', 
    'javascript', 
    'typescript',
    'html',
    'python'
  },
  sync_install = false,
  highlight = {
    enable = true,
  },
})
