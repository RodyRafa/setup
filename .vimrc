set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" initial settings (specific for vundle)
"set nocompatible
"filetype off

" set vundle as plugin manager
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()
Plugin 'gmarik/vundle'
filetype plugin indent on


" =======================================
" Plugins
" =======================================

" Emmet vim
Plugin 'mattn/emmet-vim'

" Editor config
Plugin 'editorconfig/editorconfig-vim'

" Ctrl p
Plugin 'kien/ctrlp.vim'

" =======================================
" Themes
" =======================================
Plugin 'baskerville/bubblegum'
Plugin 'nanotech/jellybeans.vim'

"Tabulação 
syntax enable               " habilita a syntax
set tabstop=2               " quantidade de espaco que vai conter meu tab modo visual
set softtabstop=2           " quantidade de espaco que vai conter meu tab modo edição
set shiftwidth=2
set expandtab               " converte todos os tab em espacos
set background=dark

"Configuração UI
set number                  " vai mostrar a linha
set showcmd                 " mostra comandos na barra de baixo
set cursorline              " deixa um highlight na linha que estiver o cursor
set wildmenu                " mostra o autocomplete para os commandos do menu
set showmatch               " mostra em highliht {[(

"Cor do tema
let g:jellybeans_use_lowcolor_black = 0
colorscheme jellybeans
