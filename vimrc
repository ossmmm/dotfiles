set encoding=utf-8
scriptencoding utf-8

filetype plugin indent on
syntax on

set number " 行番号表示 
set hlsearch
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent
set directory^=$HOME/.vim/tmp// " swapファイルの保存場所
set nobackup " バックアップファイル(*~)を作らない

set autowrite " Make/GoBuild等の時に自動保存
set hidden " バッファ追加時に保存必須でなくす
let g:netrw_nogx = 1

nmap <ESC><ESC> :noh<CR> " ESCx2で検索ハイライトを消す

let mapleader = "\<Space>" " leaderをスペースキーに

nnoremap <leader>c :!clip.exe < %<CR> " leader+cでファイル内容をクリップボードへコピー

" 移動系
nnoremap j gj
nnoremap k gk

nnoremap <UP> <C-W>k
nnoremap <DOWN> <C-W>j
nnoremap <LEFT> <C-W>h
nnoremap <RIGHT> <C-W>l

nnoremap <S-UP> :bp<CR>
nnoremap <S-DOWN> :bn<CR>
nnoremap <S-LEFT> gT
nnoremap <S-RIGHT> gt

" For NERDTree
map <C-n> :NERDTreeToggle<CR>

" For vim-go
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nnoremap <leader><SPACE> :GoFmt<CR>
