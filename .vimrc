" initial settings (specific for vundle)
set nocompatible
filetype off

" set vundle as plugin manager
set rtp+=~/.vim/bundle/vundle/
set paste
call vundle#rc()
Bundle 'gmarik/vundle'
filetype plugin indent on


" =======================================
" Plugins
" =======================================

" Emmet vim
Bundle "mattn/emmet-vim"

" Editor config
Bundle 'editorconfig/editorconfig-vim'

" Ctrl p
Bundle 'kien/ctrlp.vim'

" Syntax of React"
Bundle 'isRuslan/vim-es6'
Bundle 'mxw/vim-jsx'
Bundle 'pangloss/vim-javascript'

" =======================================
" Themes
" =======================================
Bundle 'baskerville/bubblegum'
Bundle 'nanotech/jellybeans.vim'

"Tabulação 
syntax enable               " habilita a syntax
set tabstop=2               " quantidade de espaco que vai conter meu tab modo visual
set softtabstop=2           " quantidade de espaco que vai conter meu tab modo edição
set shiftwidth=2            " quantidade de espaco que na identação utilizando ">" "<"
set expandtab               " converte todos os tab em espacos
set background=dark

"Configuração UI
set number                  " vai mostrar a linha
set showcmd                 " mostra comandos na barra de baixo
set cursorline              " deixa um highlight na linha que estiver o cursor
set wildmenu                " mostra o autocomplete para os commandos do menu
set showmatch               " mostra em highliht {[(
set hlsearch                " mostra cores no highlight 
set incsearch

"Cor do tema
colorscheme jellybeans
let g:jellybeans_use_lowcolor_black = 0

" Ativa jsx
let g:jsx_ext_required = 0

" Velocity
au BufNewFile,BufRead *.vm,*.html,*.htm,*.shtml,*.stm set ft=velocity

