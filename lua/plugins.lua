local packer = require('packer_bootstrap')

packer.startup({
	{

		{ 'wbthomason/packer.nvim' },

		{ 'nvim-telescope/telescope.nvim', tag = '0.1.5', 
        config = 'require("config.telescope")', 
		requires = 
            { 
                {'nvim-lua/popup.nvim'},
                {'nvim-lua/plenary.nvim'},
                {'BurntSushi/ripgrep'},
                {'nvim-telescope/telescope-packer.nvim'},
                {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
                {'cljoly/telescope-repo.nvim'},
                {'nvim-treesitter/nvim-treesitter'},
                {'kyazdani42/nvim-web-devicons'},
            }, 
        },

        {'folke/which-key.nvim', config = 'require("config.whichkey")'},
		
		{'kyazdani42/nvim-web-devicons'},

		{'numToStr/Comment.nvim', config = 'require("Comment").setup()' },

		{"catppuccin/nvim", config = 'vim.cmd("colorscheme catppuccin")' },

		{'neoclide/coc.nvim', branch = 'release', config = 'require("config.coc")'},

		{'jackguo380/vim-lsp-cxx-highlight'},


        {'akinsho/bufferline.nvim', tag = "*", config = 'require("config.bufferline")',
        requires = 'kyazdani42/nvim-web-devicons'}
	}

})

if packer.sync_required then
	packer.sync()
end
