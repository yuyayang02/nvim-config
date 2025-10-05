-- 让复制粘贴默认使用系统剪贴板
vim.opt.clipboard = "unnamedplus"

local opts = { noremap = true, silent = true }

-- 插入模式 Ctrl+V 粘贴（从系统剪贴板）
vim.keymap.set("i", "<C-v>", '<C-r>+', opts)

-- 普通模式 Ctrl+V 粘贴（从系统剪贴板）
vim.keymap.set("n", "<C-v>", '"+p', opts)

-- 可视模式 Ctrl+C 复制（复制到系统剪贴板）
vim.keymap.set("v", "<C-c>", '"+y', opts)

-- 可视模式 Ctrl+V 粘贴（从系统剪贴板替换选中内容）
vim.keymap.set("v", "<C-v>", '"+p', opts)
