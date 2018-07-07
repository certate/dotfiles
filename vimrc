filetype plugin indent on

" =============================================================================
" プラグイン
" =============================================================================
call plug#begin('~/.vim/plugged')
  " カラースキーム
  Plug 'cocopon/iceberg.vim'
  " ツリー表示
  Plug 'scrooloose/nerdtree'
  " git連携
  Plug 'tpope/vim-fugitive'
  " 見た目よくする
  Plug 'vim-airline/vim-airline'
call plug#end()

" =============================================================================
" 編集
" =============================================================================
" タブ幅
set tabstop=2
" 自動インデントでずれる幅
set shiftwidth=2
" 改行時にインデントを保持
set autoindent
" タブの代わりに空白
set expandtab
" タグファイルの指定
set tags=~/.tags

" =============================================================================
" 見た目
" =============================================================================
" カラースキーム
colorscheme iceberg
" 背景を透過
augroup TransparentBG
  autocmd!
  autocmd Colorscheme * highlight Normal ctermbg=none
  autocmd Colorscheme * highlight NonText ctermbg=none
  autocmd Colorscheme * highlight LineNr ctermbg=none
  autocmd Colorscheme * highlight Folded ctermbg=none
  autocmd Colorscheme * highlight EndOfBuffer ctermbg=none
augroup END
" シンタックスハイライトを有効
syntax enable
" 行番号
set number
" コマンドラインに使われる画面上の行数
set cmdheight=2
" エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
set laststatus=2
" ルーラーを表示
set ruler
" 不可視文字を表示
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
" スクロールの余裕を確保する
set scrolloff=3

" =============================================================================
" vim-airline
" =============================================================================
let g:airline#extensions#tabline#enabled = 1

" =============================================================================
" 他のファイルを読み込み
" =============================================================================
source ~/.vimrc.keybind

