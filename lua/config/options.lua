vim.loader.enable()
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local opt = vim.opt

-- ▶️ 显示行号
opt.number = true               -- 当前行显示绝对行号
opt.relativenumber = true       -- 其他行显示相对行号，便于跳转（如 d5j）

-- 设置普通行号颜色
vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffffff" })  -- 可改为你想要的亮色

-- 设置当前行号（relativenumber=true 时当前行的 number）颜色
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffffff", bold = true })


vim.opt.clipboard = "unnamedplus"

-- ▶️ 缩进与制表符
opt.tabstop = 4                 -- Tab 字符的显示宽度为 4 个空格
opt.shiftwidth = 4              -- 使用 4 个空格进行自动缩进
opt.expandtab = false           -- 不将 Tab 转为空格，使用真实的 \t 字符
opt.autoindent = true           -- 自动缩进当前行（继承前一行缩进）
vim.bo.tabstop = 4                 -- Tab 字符的显示宽度为 4 个空格
vim.bo.shiftwidth = 4              -- 使用 4 个空格进行自动缩进
vim.bo.expandtab = false           -- 不将 Tab 转为空格，使用真实的 \t 字符
vim.bo.autoindent = true           -- 自动缩进当前行（继承前一行缩进）
-- ▶️ 显示行为
opt.wrap = false                -- 禁用自动换行（长行横向滚动）
-- ▶️ 光标行高亮
opt.cursorline = false          -- 不高亮当前光标所在行（可设为 true）

-- ▶️ 鼠标支持
opt.mouse:append("a")           -- 启用所有模式的鼠标支持（normal, insert, visual）

-- ▶️ 剪贴板
opt.clipboard:append("unnamedplus")  -- 使用系统剪贴板（支持 "+y, "+p 等）

-- ▶️ 窗口分屏行为
opt.splitright = true           -- 垂直分屏时，新窗口出现在右侧
opt.splitbelow = true           -- 水平分屏时，新窗口出现在下方

-- ▶️ 搜索设置
opt.ignorecase = true           -- 搜索时默认忽略大小写
opt.smartcase = true            -- 如果包含大写字母，则启用大小写敏感

