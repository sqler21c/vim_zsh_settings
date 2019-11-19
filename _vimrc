" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" �߰��ϰ� ���� �÷������� �Ʒ��� �����ϸ� �˴ϴ�.
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

syntax enable "�������� Ȱ��ȭ
set wmnu      " Tab �ڵ� �ϼ��� ������ ����� ������
set nu        " ���μ��� ǥ���� �ݴϴ�
set fencs=ucs-bom,utf-8,korea  " ������ ���� �� encoding �����Դϴ�.
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

if has("gui_running") " gvim�� ����
	set guifont=D2Coding:h10
	set background=light
	colorscheme jellybeans

	set guioptions-=m  " �޴� ����
	set guioptions-=T  " ���� ����
	set guioptions-=r  " ��ũ�� ����
endif	

let mapleader=','

set laststatus=2            " vim-airline �÷������� ���ؼ� ���¹� 2�ٷ�
let g:airline_left_sep=''   " vim-airline ���¹� ���� ������ ����
let g:airline_right_sep=''  " vim-airline ���¹� ������ ������ ����

let g:airline#extensions#tabline#enabled=1
let g:airline#extenstions#tabline#fnamemod=':t'

nnoremap <Leader>rc :rightbelow vnew $MYVIMRC<CR>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nnoremap <C-F> :NERDTreeFind<CR>
nmap <Leader>n :NERDTreeToggle<CR>

