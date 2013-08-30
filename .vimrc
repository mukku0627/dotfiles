" シンタックスの色分け
syntax on
set nocompatible
" ワイドメニュー
set wildmenu

" タブが対応する空白数
set tabstop=4
" シフト移動幅
set shiftwidth=4
" タブの代わりに空白挿入
set expandtab

" ビープ音を消して画面フラッシュも消す
set visualbell t_vb=

" インクリメンタル検索
set hlsearch
set incsearch
" 大文字小文字を区別しない
set ignorecase

" 色
highlight ZenSP cterm=underline ctermfg=white
match ZenSP /　/

" ステータスラインの設定
set statusline=[%L]\ %y%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%r%m%=%c:%l/%L
set laststatus=2

" php color
set syn=php
