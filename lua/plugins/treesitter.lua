return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter").setup({})

            local parsers = {
                -- "lua",
                "javascript",
                "typescript",
                "html",
                "python",
                "cpp",
                "c",
                "powershell",
                "vim",
                "vimdoc",
            }

            require("nvim-treesitter").install(parsers)

            vim.api.nvim_create_autocmd("FileType", {
                callback = function(args)
                    pcall(vim.treesitter.start, args.buf)
                end,
            })
        end,
    },
}

