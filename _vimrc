" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" 추가하고 싶은 플러그인을 아래에 나열하면 됩니다.
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
"Plugin 'ctrlpvim/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable "문법강조 활성화
set wmnu      " Tab 자동 완성시 가능한 목록을 보여줌
set nu        " 라인수를 표시해 줍니다
set fencs=ucs-bom,utf-8,korea  " 파일을 읽을 때 encoding 순서입니다.
set guifont=D2Coding:h9
set ru
set vb
"set hl
set ci
set ai
set si
set sw=4
set ts=4
set scs
set hi=50
set cul
set nobackup
set hlsearch
set bs=eol,start,indent
set showmatch
set ruler
set incsearch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set noswapfile
set visualbell

set fileencoding=utf-8
set tenc=utf-8
set ignorecase
highlight Comment term=bold cterm=bold ctermfg=5

if has("gui_running") " gvim만 적용
	set guifont=D2Coding:h10
	set background=light
	colorscheme jellybeans

	set guioptions-=m  " 메뉴 삭제
	set guioptions-=T  " 툴바 삭제
	set guioptions-=r  " 스크롤 삭제
endif	

let mapleader=','

set laststatus=2            " vim-airline 플러그인을 위해서 상태바 2줄로
let g:airline_left_sep=''   " vim-airline 상태바 왼쪽 구분자 없음
let g:airline_right_sep=''  " vim-airline 상태바 오른쪽 구분자 없음

let g:airline#extensions#tabline#enabled=1
let g:airline#extenstions#tabline#fnamemod=':t'

nnoremap <Leader>rc :rightbelow vnew $MYVIMRC<CR>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nnoremap <C-F> :NERDTreeFind<CR>
nmap <Leader>n :NERDTreeToggle<CR>

