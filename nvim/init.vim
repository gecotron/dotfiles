
call plug#begin()
	Plug 'morhetz/gruvbox'
	Plug 'catppuccin/nvim', {'as': 'catppuccin'}
	Plug 'junegunn/vim-easy-align'
	Plug 'norcalli/nvim-colorizer.lua'
	Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
	Plug 'kyazdani42/nvim-tree.lua'
call plug#end()

set termguicolors

let g:catppuccin_flavour = "dusk" " latte, frappe, macchiato, mocha
colorscheme gruvbox
let g:Hexokinase_highlighters = [ 'virtual' ]
set termguicolors
lua << EOF
require 'catppuccin'.setup()
require'colorizer'.setup()
require('nvim-tree').setup()
EOF
