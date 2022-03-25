set encoding=utf-8
set fileencoding=utf-8
set spell                             " spellchecking
set spelllang=en_us,es_es
set nocompatible                      " disable compatibility to old-time vim
set showmatch                         " show matching
set ignorecase                        " case insensitive
set mouse=a                           " enable mouse click
set hlsearch                          " highlight search
set incsearch                         " incremental search
set tabstop=2                         " number of columns per tab
set softtabstop=0
set shiftwidth=2                      " width for autoindents
set autoindent
set wildmode=longest,list             " bash-like completions
set number                            " line numbers
set cc=80                             " 80 column border
set cursorline                        " highlight current cursorline
set ttyfast 				   			 	        " speed up scrolling
set laststatus=2
set splitright
set splitbelow
set backspace=indent,eol,start        " fix backspace indent
set wildmenu                          " better command line completion
set completeopt=menu,menuone,noselect

syntax on                             " syntax highlighting
set clipboard=unnamedplus             " system clipboard
filetype plugin on
filetype plugin indent on

" Plugins
call plug#begin("~/.vim/plugger")
Plug 'arcticicestudio/nord-vim'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/lightline.vim'
Plug 'vimwiki/vimwiki'
Plug 'fatih/vim-go', {'do':':GoUpdateBinaries'}
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'glepnir/lspsaga.nvim'
call plug#end()

" Map leader
let mapleader=','

" Lightline
colorscheme nord
let g:lightline={
	\ 'colorscheme':'nord',
	\ 'active':{
	\		'left':[['mode','paste'],['readonly','filename', 'modified']]
	\ },
	\ }

" NERDTree
:nnoremap <C-n> :NERDTreeToggle<CR>

" Go
let g:go_list_type="quickfix"
let g:go_fmt_command="goimports"
let g:go_fmt_fail_silently=1
let g:go_highlight_types=1
let g:go_highlight_fields=1
let g:go_highlight_functions=1
let g:go_highlight_methods=1
let g:go_highlight_operators=1
let g:go_highlight_build_constraints=1
let g:go_highlight_structs=1
let g:go_highlight_generate_tags=1
let g:go_highlight_space_tab_error=0
let g:go_highlight_array_whitespace_error=0
let g:go_highlight_trailing_whitespace_error=0
let g:go_highlight_extra_types=1

" Vimwiki
let g:vimwiki_list=[
	\ {
	\ 'path': '~/Documentos/Brain/',
	\ 'syntax': 'markdown', 'ext': '.md'
	\ }]

" FZF-like search
" :find * makes a fuzzy search
" :b lets autocomplete any open buffer
set path+=**

" Nice abbreviations
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" Splits
nnoremap <Leader>h :<C-u>split<CR>
nnoremap <Leader>v :<C-u>vsplit<CR>

" Startify
let g:startify_custom_header=[
	\ ' ________   _______   ________  ___      ___ ___  _____ ______      ',
	\ '|\   ___  \|\  ___ \ |\   __  \|\  \    /  /|\  \|\   _ \  _   \    ',
	\ '\ \  \\ \  \ \   __/|\ \  \|\  \ \  \  /  / | \  \ \  \\\__\ \  \   ',
	\ ' \ \  \\ \  \ \  \_|/_\ \  \\\  \ \  \/  / / \ \  \ \  \\|__| \  \  ',
	\ '  \ \  \\ \  \ \  \_|\ \ \  \\\  \ \    / /   \ \  \ \  \    \ \  \ ',
	\ '   \ \__\\ \__\ \_______\ \_______\ \__/ /     \ \__\ \__\    \ \__\',
	\ '    \|__| \|__|\|_______|\|_______|\|__|/       \|__|\|__|     \|__|',
	\]

let g:startify_lists=[
	\ { 'type': 'bookmarks', 'header': [' Bookmarks '] },
	\ { 'type': 'files', 'header': [' Files '] },
	\ ]

let g:startify_bookmarks=[
	\ { 'v' : '~/.config/nvim/init.vim' },
	\ { 'z' : '~/.zshrc' },
	\ { 'g' : '~/.gitconfig' },
	\ { 'c' : '~/Documentos/Code' },
\ ]

" lsp_installer & lspsaga
lua << END

-- ls_installer
local lsp_installer = require 'nvim-lsp-installer'

-- Registers a handler that will be called for each installed lsp server
lsp_installer.on_server_ready(function(server)

	-- No options passed to the server
	server:setup({})
end)

-- lspsaga
local saga = require 'lspsaga'
saga.init_lsp_saga()
END

nnoremap <silent> gh :Lspsaga lsp_finder<CR>
nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>
nnoremap <silent>K :Lspsaga hover_doc<CR>
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
nnoremap <silent> gs :Lspsaga signature_help<CR>
nnoremap <silent>gr :Lspsaga rename<CR>
nnoremap <silent> gd :Lspsaga preview_definition<CR>
