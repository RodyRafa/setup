" initial settings (specific for vundle)
set nocompatible
filetype off
set paste

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'gmarik/vundle'

" =======================================
" Plugins
" =======================================

" Emmet vim
Plugin 'mattn/emmet-vim'

" Editor config
Plugin 'editorconfig/editorconfig-vim'

" Syntax of React"
Plugin 'isRuslan/vim-es6'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'

" Syntax of AngularJs
Plugin 'leafgarland/typescript-vim'

" =======================================
" Themes
" =======================================
Plugin 'baskerville/bubblegum'
Plugin 'nanotech/jellybeans.vim'
call vundle#end()
filetype plugin indent on
"Tabulação 
syntax enable               " habilita a syntax
set tabstop=2               " quantidade de espaco que vai conter meu tab modo visual
set background=dark
" quantidade de espaco que vai conter meu tab modo edição
" quantidade de espaco que na identação utilizando ">" "<"
" converte todos os tab em espacos
set softtabstop=2 shiftwidth=2 expandtab

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

let g:typescript_indent_disable = 1
