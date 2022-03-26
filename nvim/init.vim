set encoding=utf-8
set fileencoding=utf-8
set spell                             " spell checking
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
runtime ./plugins.vim

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
nmap ss :split<CR>
nmap sv :vsplit<CR>

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

" lsp_installer
lua << END
local lsp_installer = require 'nvim-lsp-installer'

-- Registers a handler that will be called for each installed lsp server
lsp_installer.on_server_ready(function(server)

-- No options passed to the server
server:setup({})
end)
END
