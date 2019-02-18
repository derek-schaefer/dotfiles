syntax on

set autoindent
set autoread
set backspace=2
set expandtab
set hlsearch
set incsearch
set laststatus=2
set nocompatible
set noerrorbells
set nowrap
set number
set path+=**
set ruler
set shiftwidth=2
set smartindent
set t_vb=
set tabstop=2
set visualbell
set wildignore+=*/coverage/*
set wildignore+=*/node_modules/*
set wildignore+=*/tmp/*
set wildmenu

highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'elixir-lang/vim-elixir'
Plugin 'flazz/vim-colorschemes'
Plugin 'itchyny/lightline.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

call vundle#end()
filetype plugin indent on

set background=dark
colorscheme wombat256
highlight Normal ctermbg=none
highlight LineNr ctermbg=none
highlight NonText ctermbg=none

let mapleader=','
let g:jsx_ext_required=0
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

map <Leader>p :CtrlP<CR>
map <Leader>b :CtrlPBuffer<CR>
map <Leader>h :nohlsearch<CR>
map <Leader>s :setlocal spell!<CR>
map <Leader>f <Plug>(easymotion-bd-f)
map <Leader>t :NERDTreeToggle<CR>
nnoremap <F8> :setl noai nocin nosi inde=<CR>
