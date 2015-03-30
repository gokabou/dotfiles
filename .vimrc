"settings
""general
set number
set cursorline
hi clear CursorLine
set title
set ambiwidth=double
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set hidden
""searching
set hlsearch
set incsearch
set ignorecase
set wrapscan
""language
language C
""key remapping
"""nomal mode
nnoremap <Esc><Esc> :nohlsearch<Esc>
nnoremap ; :
"""insert mode
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
""clipboard
set clipboard=unnamedplus

"neobundle
set nocompatible
filetype off

if has('vim_starting')
	set rtp+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()

"plugins
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tomasr/molokai'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'croaker/mustang-vim'
NeoBundle 'nanotech/jellybeans.vim'

filetype plugin indent on

"color
colorscheme jellybeans
if &term =~ "xterm-256color" || "screen-256color"
    set t_Co=256
    set t_Sf=[3%dm
    set t_Sb=[4%dm
elseif &term "xterm-color"
    set t_Co=8
    set t_Sf=[3%dm
    set t_Sb=[4%dm
endif

syntax enable
hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c
