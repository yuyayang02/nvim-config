return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require('nvim-treesitter.configs').setup {
			ensure_installed = {
				"markdown",
				"markdown_inline",
				"lua",
				"python",
				"javascript",
				"html",
				"css",
				"json",
				"json5",
				"bash",
				"go",
				"rust",
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			-- indent = { 
			-- 	enable = true 
			-- },
		}
	end
}
