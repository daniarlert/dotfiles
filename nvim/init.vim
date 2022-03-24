set encoding=utf-8
set fileencoding=utf-8
set nocompatible               " disable compatibility to old-time vim
set showmatch                  " show matching
set ignorecase                 " case insensitive
set mouse=a                    " enable mouse click
set hlsearch                   " highligh search
set incsearch                  " incremental search
set tabstop=4                  " number of columns per tab
set softtabstop=0
set shiftwidth=4               " width for autoindents
set autoindent
set wildmode=longest,list      " bash-like completions
set number                     " line numbers
set cc=80                      " 80 column border
set cursorline                 " highlight current cursorline
set ttyfast 				   " speed up scrolling
set laststatus=2
set splitright
set splitbelow
set backspace=indent,eol,start " fix backspace indent
set wildmenu                   " better command line completion

syntax on                      " syntax highlighting
set clipboard=unnamedplus      " system clipboard
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
	\	},
	\ }

" NERDTree
:nnoremap <C-n> :NERDTreeToggle<CR>

" Go
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_structs = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_space_tab_error = 0
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 1

" Vimwiki
let g:vimwiki_list = [{'path': '~/Documentos/Brain/', 'syntax': 'markdown', 'ext': '.md'}]

" FZF-like
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

