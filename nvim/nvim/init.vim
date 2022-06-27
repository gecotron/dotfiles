
call plug#begin()
	Plug 'sainnhe/everforest'
	Plug 'catppuccin/nvim', {'as': 'catppuccin'}
	Plug 'junegunn/vim-easy-align'
	Plug 'norcalli/nvim-colorizer.lua'
	Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'Fymyte/rasi.vim'
	Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
	Plug 'rktjmp/lush.nvim'
call plug#end()

set termguicolors

let g:catppuccin_flavour = "dusk" " latte, frappe, macchiato, mocha
colorscheme everforest
let g:Hexokinase_highlighters = [ 'virtual' ]
set termguicolors
lua << EOF
require('catppuccin').setup()
require('colorizer').setup()
require('nvim-tree').setup()
require('lualine').setup( {
	options = {
		theme = 'everforest'
	}

})
EOF
