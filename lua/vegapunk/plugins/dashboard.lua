return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
        require('dashboard').setup {
            -- Dashboard setup
            custom_header = {
                '',
                '   ███╗   ██╗ ███████╗ ████████╗ ██╗   ██╗ ██╗ ███╗   ██╗',
                '   ████╗  ██║ ██╔════╝ ╚══██╔══╝ ██║   ██║ ██║ ████╗  ██║',
                '   ██╔██╗ ██║ █████╗      ██║    ██║   ██║ ██║ ██╔██╗ ██║',
                '   ██║╚██╗██║ ██╔══╝      ██║    ██║   ██║ ██║ ██║╚██╗██║',
                '   ██║ ╚████║ ██║         ██║    ╚██████╔╝ ██║ ██║ ╚████║',
                '   ╚═╝  ╚═══╝ ╚═╝         ╚═╝     ╚═════╝  ╚═╝ ╚═╝  ╚═══╝',
                '',
            },
            custom_section = {
                a = { description = { '  Find File          ' }, command = 'Telescope find_files' },
                b = { description = { '  Recents            ' }, command = 'Telescope oldfiles' },
                c = { description = { '  Find Word          ' }, command = 'Telescope live_grep' },
                d = { description = { '洛 New File           ' }, command = 'DashboardNewFile' },
                e = { description = { '  Bookmarks          ' }, command = 'Telescope marks' },
            },
        }

        -- Dashboard keymap
        vim.api.nvim_set_keymap('n', '<leader>ss', ':Telescope find_files<CR>', { noremap = true, silent = true })

        -- Check for arguments and open the dashboard if present
        if vim.fn.argc() > 0 then
            vim.cmd[[Dashboard]]
        end
    end,
    requires = {'nvim-tree/nvim-web-devicons'},
}

