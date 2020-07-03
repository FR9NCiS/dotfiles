" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Vim + TMUX = <3
    Plug 'christoomey/vim-tmux-navigator'
    " Git integration
    Plug 'tpope/vim-fugitive'
    " Display git changes
    Plug 'airblade/vim-gitgutter'
    " Gruvbox color scheme
    Plug 'morhetz/gruvbox'
    " coc
    Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
    " Airline
    Plug 'vim-airline/vim-airline'
    " Color support (hex, rgb() => color)
    Plug 'ap/vim-css-color'
    " C/C++/ObjC semantic highlighting using the LSP
    Plug 'jackguo380/vim-lsp-cxx-highlight'
    " Start screen for Vim
    Plug 'mhinz/vim-startify'
    " Emmet integration
    Plug 'mattn/emmet-vim'
    " Icons, always load as last one
    Plug 'ryanoasis/vim-devicons'

call plug#end()
