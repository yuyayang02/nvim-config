return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      -- Telescope 配置
      require('telescope').setup {
        defaults = {
          path_display = { 'truncate' },
          layout_strategy = 'horizontal',
          layout_config = {
            horizontal = { prompt_position = 'top', width = 0.9, height = 0.9 }
          },
          mappings = {
            i = { ["<C-h>"] = "which_key" },
            n = { ["q"] = "close" }
          }
        },
        pickers = {
          find_files = { theme = "dropdown", hidden = true },
          live_grep = { additional_args = { "--glob", "!node_modules" } }
        }
      }

      -- 键绑定
      local builtin = require('telescope.builtin')
      local keymap = vim.keymap.set

      keymap('n', '<leader>ff', builtin.find_files, { desc = 'Telescope: 查找文件' })
      keymap('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope: 实时 grep' })
      keymap('n', '<leader>fb', builtin.buffers, { desc = 'Telescope: 缓冲区列表' })
      keymap('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope: 帮助标签' })
      keymap('n', '<leader>fs', builtin.oldfiles, { desc = 'Telescope: 最近文件' })
    end
  }
}
