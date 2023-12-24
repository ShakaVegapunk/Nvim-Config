--
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
--vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'mg979/vim-visual-multi'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use({
        'rose-pine/neovim', 
        as = 'rose-pine',
        config = function ()
            vim.cmd('colorscheme rose-pine')
        end
    }) 
    use( 
    'nvim-treesitter/nvim-treesitter',
    {run = ':TSUpdate'}
    )

    use 'nvim-treesitter/playground'

    use 'jesseduffield/lazygit'

    -- use 'theprimeagen/harpoon'
    use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    }

    use 'mbbill/undotree'

    use 'stevearc/aerial.nvim'
    use 'vim-airline/vim-airline'

    --use('vim-airline/vim-airline-themes')
    use 'nvim-tree/nvim-tree.lua'
    use 'rcarriga/nvim-dap-ui'
    use 'theHamsta/nvim-dap-virtual-text'
    use 'nvim-telescope/telescope-dap.nvim'

    --LSP
    use 'BurntSushi/ripgrep'
    use 'danilamihailov/beacon.nvim'
    use 'folke/todo-comments.nvim'
    use 'tpope/vim-commentary'
    use 'folke/trouble.nvim'
    use 'goolord/alpha-nvim'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/vim-vsnip'
    use 'kyazdani42/nvim-web-devicons'
    use 'lewis6991/impatient.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'm-demare/hlargs.nvim'
    use 'mfussenegger/nvim-dap'
    use 'navarasu/onedark.nvim'
    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-telescope/telescope-fzf-native.nvim'
    use 'phaazon/hop.nvim'
    use 'preservim/tagbar'
    use 'puremourning/vimspector'
    use 'RRethy/vim-illuminate'
    use 'sharkdp/fd'
    use 'tanvirtin/monokai.nvim'
    use 'tpope/vim-surround'
    use 'voldikss/vim-floaterm'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'windwp/nvim-autopairs'
    --end of use
end)


