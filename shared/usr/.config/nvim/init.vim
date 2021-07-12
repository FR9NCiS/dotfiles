set hidden                              " required to keep multiple buffers open
set nowrap
set encoding=utf-8
set fileencoding=utf-8
set pumheight=10                        " pop-up menu height
set ruler                               " show the ruler at all times
"set cmdheight=0
set iskeyword+=-                        " treat dash separated words as a word text object"
set mouse=a
set splitbelow
set t_Co=256
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab                           " convert tabs to spaces
set smartindent
set autoindent
set laststatus=0                        " always display the status line
set number                              " Line numbers
set cursorline                          " enable highlighting of the current line
set showtabline=2
set noshowmode                          " airline takes care of the status bar
set nobackup
set nowritebackup
set updatetime=300
set timeoutlen=100
set formatoptions-=cro                  " stop newline continution of comments
set clipboard=unnamedplus
"set listchars+=tab:>-,space:.
set list!                               " show above on default
set number relativenumber
set nu rnu                              " hybrid line numbers

" additional language support for jsonc
autocmd FileType json syntax match Comment +\/\/.\+$+

" auto-install plug.vim if not yet installed
if empty(glob("$HOME/.config/nvim/autoload/plug.vim"))
  silent !curl -fLo "$HOME/.config/nvim/autoload/plug.vim" --create-dirs "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
endif

" load plugins
call plug#begin("$HOME/.config/nvim/autoload/plugged")
    "Plug 'neovim/nvim-lspconfig'
    "Plug 'nvim-lua/completion-nvim'
    Plug 'honza/vim-snippets'
    Plug '9mm/vim-closer'
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
call plug#end()


hi Comment cterm=italic
syntax on


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
"let g:airline_theme = 'gruvbox'
