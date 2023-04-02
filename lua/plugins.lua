local packer = require('packer_bootstrap')

packer.startup({
	{

		{ 'wbthomason/packer.nvim' },

		{ 'nvim-telescope/telescope.nvim', config = 'require("config.telescope")', 
		requires = { 
		{ 'nvim-lua/popup.nvim' },
		{ 'nvim-lua/plenary.nvim' },
		{'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
		{'nvim-telescope/telescope-packer.nvim'},
		{'cljoly/telescope-repo.nvim'},
        	{'nvim-treesitter/nvim-treesitter'}
		}, },

        {'folke/which-key.nvim', config = 'require("config.whichkey")'},
		
		{'kyazdani42/nvim-web-devicons'},

		{ 'numToStr/Comment.nvim', config = 'require("Comment").setup()' },

		{ "catppuccin/nvim", config = 'vim.cmd("colorscheme catppuccin")' },

		{ 'neoclide/coc.nvim', branch = 'release', config = 'require("config.coc")' },


		{ "jackguo380/vim-lsp-cxx-highlight" },

        {'akinsho/bufferline.nvim', config = 'require("config.bufferline")'}
	}

})

if packer.sync_required then
	packer.sync()
end
