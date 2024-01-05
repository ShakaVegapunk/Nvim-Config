return{
	{
		'nvim-treesitter/nvim-treesitter',

		config = function()
			require('nvim-treesitter.configs').setup {
				ensure_installed = { "vim", "javascript","typescript", "lua","c" , "toml" },
				auto_install = true,
				highlight = {
					enable = true,           
					additional_vim_regex_highlighting = false,
				},
				ident = { enable = true },
				rainbow = {
					enable = true,
					extended_mode = true,
					max_file_lines = nil,
				}
			}

			-- Disable treesitter folding
			vim.api.nvim_exec([[autocmd FileType * setlocal foldmethod=expr foldexpr=]], false)
		end
	},

	'nvim-treesitter/playground',

}