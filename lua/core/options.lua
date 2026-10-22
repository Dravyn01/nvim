vim.opt.nu = true
-- vim.opt.relativenumber = true -- แสดงเลขบรรทัดแบบสัมพัทธ์
vim.opt.mouse = "a"        -- เปิดใช้งานเมาส์ในทุกโหมด
vim.opt.expandtab = true   -- ใช้ space แทน tab
vim.opt.tabstop = 2        -- กำหนดขนาด tab เป็น 2 space
vim.opt.shiftwidth = 2     -- จำนวน space ที่ใช้ในการเยื้อง
vim.opt.smartindent = true -- เยื้องอัตโนมัติอย่างชาญฉลาด
vim.opt.autoindent = true  -- เปิดใช้งานการเยื้องอัตโนมัติ
vim.g.indent = 6           -- ลบออก: การตั้งค่านี้มักจะถูกจัดการด้วย tabstop/shiftwidth

-- UI/Appearance
vim.opt.termguicolors = true

vim.opt.cmdheight = 1

vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8

vim.o.wrap = true

-- SEARCH
vim.opt.incsearch = true
vim.opt.hlsearch = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true

vim.g.mapleader = " "

-- อนุญาตให้บัฟเฟอร์ซ่อนอยู่เมื่อเปลี่ยนไปบัฟเฟอร์อื่น
vim.opt.hidden = true
vim.opt.inccommand = "split"


vim.diagnostic.config({
  virtual_text = true,
  underline = true,
  signs = true,
  update_in_insert = false,
})
