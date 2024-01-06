return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({})

		-- Check for arguments and open the dashboard if present
		if vim.fn.argc() > 0 then
			vim.cmd([[Dashboard]])
		end
	end,
	requires = { "nvim-tree/nvim-web-devicons" },
}
