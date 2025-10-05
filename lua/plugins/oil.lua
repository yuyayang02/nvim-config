return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },  -- 可选：用于图标（如果你喜欢 nvim-tree 的图标）
  opts = {},  -- 默认配置即可起步
  -- 键映射：用 <leader>e 打开当前目录的 oil 视图
  keys = {
    { "<leader>e", "<cmd>Oil<cr>", desc = "Oil: Open in current directory" },
  },
}
