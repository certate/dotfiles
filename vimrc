filetype plugin indent on

" =============================================================================
" プラグイン
" =============================================================================
call plug#begin('~/.vim/plugged')
  " カラースキーム
  Plug 'nanotech/jellybeans.vim'
  " ツリー表示
  Plug 'scrooloose/nerdtree'
  " git連携
  Plug 'tpope/vim-fugitive'
  " 見た目よくする
  Plug 'vim-airline/vim-airline'
  " タグジャンプ
  Plug 'szw/vim-tags'
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

" =============================================================================
" 見た目
" =============================================================================
" シンタックスハイライトを有効
syntax enable
" 背景を透過
let g:jellybeans_overrides = {
      \'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
      \'StringDelimiter': { 'ctermfg': 'DarkYellow', '256ctermfg': 'DarkYellow' },
      \}
" カラースキーム
colorscheme jellybeans
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
" バッファを右に開く
set splitright

" =============================================================================
" vim-airline
" =============================================================================
let g:airline#extensions#tabline#enabled = 1

" =============================================================================
" vim-tags
" =============================================================================
" タグファイルを自動で作らない
let g:vim_tags_auto_generate = 0
" タグファイル名
let g:vim_tags_main_file = '.tags'

let g:vim_tags_project_tags_command = "{CTAGS} -R {OPTIONS} {DIRECTORY} 2>/dev/null"

let g:vim_tags_gems_tags_command = "{CTAGS} -R {OPTIONS} `bundle show --paths` 2>/dev/null"

" =============================================================================
" 他のファイルを読み込み
" =============================================================================
source ~/.vimrc.keybind

