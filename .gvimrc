
" 縦幅
set lines=60

" 横幅
set columns=100

" 色テーマ
:colorscheme molokai

" クリップボード共有
set clipboard=unnamed

" フォント gvimでアンダースコアが表示されないので変える
"set gfn=Takaoゴシック\ 11
set guifont=Takaoゴシック\ 12
"set gfn=MigMix\ 1M\ 11

" gvimでウインドウの位置とサイズを記憶する
" http://vim-users.jp/2010/01/hack120/
let g:save_window_file = expand('~/.vimwinpos')
augroup SaveWindow
autocmd!
autocmd VimLeavePre * call s:save_window()
function! s:save_window()
let options = [
\ 'set columns=' . &columns,
\ 'set lines=' . &lines,
\ 'winpos ' . getwinposx() . ' ' . getwinposy(),
\ ]
call writefile(options, g:save_window_file)
endfunction
augroup END

if filereadable(g:save_window_file)
execute 'source' g:save_window_file
endif
