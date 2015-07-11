"settings
""general
set number
set cursorline
set title
set ambiwidth=double
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set hidden
set backspace=indent,eol,start
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
nnoremap <Space>h :<C-u>vertical belowright h<Space>
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
"""for ocaml comment
inoremap (* (*<Space><Space>*)<Left><Left><Left>
""clipboard
set clipboard=unnamed

"neobundle
set nocompatible
filetype off

if has('vim_starting')
	set rtp+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
"plugins
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tomasr/molokai'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'croaker/mustang-vim'
NeoBundle 'nanotech/jellybeans.vim'
call neobundle#end()

filetype plugin indent on

"color
colorscheme kinako
if $TERM == "xterm"
	set t_Co=256
endif

syntax enable
