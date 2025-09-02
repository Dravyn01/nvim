require("nvim-tree").setup({
  sort_by = "case_sensitive",
  sync_root_with_cwd = true,

  renderer = {
    group_empty = true,
    full_name = true,
    highlight_git = true,      -- เพิ่มสีของไฟล์ตามสถานะ Git
    highlight_opened_files = "all", -- ไฮไลท์ไฟล์ที่เปิดอยู่

    icons = {
      webdev_colors = true,
      git_placement = "after",
      padding = " ",
      symlink_arrow = " ➜ ",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },

      glyphs = {
        default = "󰈚",    -- ไฟล์ปกติ
        symlink = "",

        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",       -- โฟลเดอร์ปกติ
          open = "",          -- โฟลเดอร์เปิดอยู่
          empty = "",         -- โฟลเดอร์เปล่า
          empty_open = "",    -- โฟลเดอร์เปล่าที่เปิดอยู่
          symlink = "",       -- โฟลเดอร์ Symlink
          symlink_open = "",
        },

        git = {
          unstaged = "",     -- ยังไม่ได้ stage
          staged = "S",       -- stage แล้ว
          unmerged = "",     -- conflict
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },

  view = {
    width = 35,
    preserve_window_proportions = true,
    number = false,
    relativenumber = false,
    float = {
      enable = false,
      quit_on_focus_loss = false,
    },
  },

  actions = {
    open_file = {
      quit_on_open = false,
      resize_window = true,
      window_picker = {
        enable = true,
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
          buftype = { "nofile", "terminal", "prompt" },
        },
      },
    },
  },

  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
})
