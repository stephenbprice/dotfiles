let mapleader=","

set nocompatible
set wrap
set encoding=utf8
set autochdir

"VIM-PLUG: install with
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"VIM-PLUG - install plugins with :PlugInstall

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'                              "NERDTree
Plug 'ajh17/spacegray.vim'                              "Spacegray colorscheme
call plug#end()
filetype plugin indent on


"Colors
syntax on
set background=dark
colorscheme spacegray

"UI
set number              "Numbered rows
set wildmenu            "Visual autocomplete for command menu
set lazyredraw          "Redraw screen only when necessary
set showmatch           "Show mathcing brace/bracket/paren
"Search
set incsearch
set hlsearch
set ignorecase
nnoremap <leader><space> :nohlsearch<CR>

"Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab



"Custom filetypes
au BufNewFile,BufRead *.vue set filetype=javascript
au BufRead,BufNewFile *.ts set filetype=typescript

autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype htmldjango setlocal ts=2 sw=2 expandtab
autocmd Filetype typescript setlocal ts=2 sw=2 expandtab

"Backups
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

"Misc
inoremap jk <esc>
set clipboard=unnamed
set autoindent          "Autoindent
set tw=0                "Stop auto line breaks
set backspace=indent,eol,start
set tags=tags;/

"Mapings
nnoremap <C-J> <C-W><C-J> "Split nav
nnoremap <C-K> <C-W><C-K> "
nnoremap <C-L> <C-W><C-L> "
nnoremap <C-H> <C-W><C-H> "

"NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

"Auto-reload vimrc on vimrc update
augroup reload_vimrc
    autocmd!
    autocmd bufwritepost $MYVIMRC nested source $MYVIMRC
augroup END
