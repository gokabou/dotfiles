""""""""""""
" settings "
""""""""""""

" initiation
"""""""""""""
set all&

" general
""""""""""
set number
set cursorline
hi clear CursorLine
set title
set ambiwidth=double
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set hidden
set backspace=start,eol,indent

" searching
""""""""""""
set hlsearch
set incsearch
set ignorecase
set wrapscan

" language
""""""""""""
language C
" key remapping
""""""""""""
  " nomal mode
  """""""""""""
nnoremap <Esc><Esc> :nohlsearch<Esc>
"*** these are for the US keyboard ***"
nnoremap ; :
nnoremap - ^
nnoremap ' "
  " insert mode
  """"""""""""""
inoremap <silent>jj <Esc>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap " ""<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap {<Enter> {<Enter><Enter>}<Up>
inoremap { {}<Left>

" clipboard
""""""""""""
set clipboard=unnamedplus

" color
""""""""
autocmd ColorScheme * hi LineNr ctermfg=5
autocmd ColorScheme * hi statusline ctermfg=0
autocmd ColorScheme * hi statusline ctermbg=7

" neobundle
""""""""""""
set nocompatible
filetype off

if has('vim_starting')
	set rtp+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()

" plugins
""""""""""
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tomasr/molokai'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'croaker/mustang-vim'
NeoBundle 'nanotech/jellybeans.vim'

filetype plugin indent on

" color
""""""""
colorscheme kinako
if $TERM == 'xterm'
    set t_Co=256
endif
syntax enable

" quick editting .vimrc
""""""""""""""""""""""""
nnoremap ,v :e $MYVIMRC<Enter>
