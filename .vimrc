""""""""""""
" settings "
""""""""""""

" initiation
"""""""""""""
set all&
filetype off
filetype plugin indent off

" for crontab
""""""""""""""
set backupskip=/tmp/*,/private/tmp/*

" general
""""""""""
set number
set cursorline
"set cursorcolumn
hi clear CursorLine
set title
set ambiwidth=double
set tabstop=4
set shiftwidth=4
augroup tabindent
autocmd! FileType ocaml setlocal tabstop=2 shiftwidth=2
autocmd! FileType haskell setlocal tabstop=2 shiftwidth=2
autocmd! FileType html setlocal tabstop=2 shiftwidth=2
autocmd! FileType xml setlocal tabstop=2 shiftwidth=2
autocmd! FileType tex setlocal tabstop=4 shiftwidth=4
set expandtab
set autoindent
set smartindent
set hidden
set backspace=start,eol,indent
" status line
""""""""""""""
set laststatus=2
set statusline=[%n]\ %<%F

" my commands and functions
""""""""""""""""""""""""""""
  " commands
  """""""""""
command! Wcount call s:wcnt()
  " functions
  """"""""""""
function! s:wcnt()
    let l:cbuf = getline(0,'$')

    let l:wc = 0
    for line in cbuf
        let xstr = substitute(line,'\i[A-z]\+','x','g')
        let xnum = substitute(xstr,"[\-/(){}\\[\\]$&,. ]",'','g')
        let l:wc += strlen(xnum)
    endfor
    
    echo l:wc
endfunction

" searching
""""""""""""
set hlsearch
set incsearch
set ignorecase
set wrapscan

" language
""""""""""""
language C

" clipboard
""""""""""""
""If you use Mac OS X
set clipboard=unnamed

""If you use Linux (Debian)
""set clipboard=unnamedplus

" Dein
"""""""
if &compatible
    set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim/dein/')
    call dein#begin('~/.vim/dein/')
    call dein#add('Shougo/unite.vim')
    call dein#add('mattn/emmet-vim')
    call dein#add('scrooloose/nerdtree')
    call dein#add('vim-latex/vim-latex')
    call dein#end()
    call dein#save_state()
endif

" color
""""""""
colorscheme kinako
if $TERM == 'xterm'
    set t_Co=256
endif

" quick editting .vimrc
""""""""""""""""""""""""
nnoremap ,v :e $MYVIMRC<Enter>

" my quick reference for vim
"""""""""""""""""""""""""""""
"nnoremap ,h :view /home/gokabou/.vim/my_quick_ref.txt<Enter>

" key remapping
""""""""""""
  " nomal mode
  """""""""""""
nnoremap <Esc><Esc> :nohlsearch<Esc>
"set very magic
nnoremap / /\v
nnoremap ; :

""If you use a JIS keyboard
nnoremap : "

""If you use an US keyboard
""nnoremap ' "

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
inoremap \" \"\"
inoremap \' \'\'
inoremap {<Enter> {<Enter><Enter>}<Up>
inoremap { {}<Left>

filetype plugin indent on
syntax enable
