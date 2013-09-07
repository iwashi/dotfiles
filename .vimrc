"---------------------------------------------------------------------------
"一般共通設定
"---------------------------------------------------------------------------
set nocompatible "viと非互換に
set number "行番号表示
set showmode "モード表示
set visualbell "ビープ音防止
"ファイルを開いた際に、前回終了時の行で起動
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

"---------------------------------------------------------------------------
"検索系設定
"---------------------------------------------------------------------------
set ignorecase "検索文字が小文字の場合は、小文字大文字区別なく検索
set smartcase "検索文字が大文字の場合はは区別して検索
set wrapscan "検索が最後までいったら頭へ戻る
" ESCを2回入力で検索時のハイライトを解除
nnoremap <ESC><ESC> :nohlsearch<CR>

"---------------------------------------------------------------------------
"プログラミング系設定
"---------------------------------------------------------------------------
syntax on "文法をカラー表示
set smartindent "オートインデント
set expandtab "タブをスペースへ展開
set ts=2 sw=2 sts=0 "タブを半角スペース2文字へ
"imap <C-Space> <C-x><C-o> "一時削除中。Omni補完をCtrl+Spaceで出せるように

"---------------------------------------------------------------------------
" 移動系
"---------------------------------------------------------------------------
" Ctrl + j, k, h, lでウインドウを移動できるように, Mainly used for NERD Tree
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l


"---------------------------------------------------------------------------
"Vundle系
"---------------------------------------------------------------------------
"For Vundle. ファイル形式の検出を無効に
filetype off

"Vundle を初期化してVundle 自身も Vundle で管理
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

"---------------------------------------------------------------------------
"その他お好きなVundle!
"---------------------------------------------------------------------------
Bundle 'Markdown'
Bundle 'AutoClose'
Bundle 'quickrun.vim'
Bundle 'surround.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'mattn/emmet-vim'
Bundle 'The-NERD-Commenter'
"Bundle 'ctrlp'

"ColorSchema
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'

"For Vundle. ファイル形式検出、プラグイン、インデントを ON
filetype plugin indent on

"---------------------------------------------------------------------------
"NERDTree Setting
"---------------------------------------------------------------------------
"<C-e>でNERDTreeをオンオフ。いつでもどこでも。
nmap <silent> <C-e>      :NERDTreeToggle<CR>
vmap <silent> <C-e> <Esc>:NERDTreeToggle<CR>
omap <silent> <C-e>      :NERDTreeToggle<CR>
imap <silent> <C-e> <Esc>:NERDTreeToggle<CR>
cmap <silent> <C-e> <C-u>:NERDTreeToggle<CR>

"---------------------------------------------------------------------------
"Emmet(Zen Coding) Setting
"---------------------------------------------------------------------------
let g:user_emmet_expandabbr_key = '<C-y>,'

"---------------------------------------------------------------------------
"Neocomplcache Setting
"---------------------------------------------------------------------------
" Disable AutoComplPop."
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
  \ 'default' : ''
  \ }

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

"---------------------------------------------------------------------------
"Color Setting
"---------------------------------------------------------------------------
colorscheme molokai
"colorscheme solarized
"set background=dark

"---------------------------------------------------------------------------
"NerdCommenter Setting
"---------------------------------------------------------------------------
"Commenting out with key bind ",,". Before comment line, add 1 space char.
let NERDSpaceDelims = 1
nmap ,, <Plug>NERDCommenterToggle
vmap ,, <Plug>NERDCommenterToggle
