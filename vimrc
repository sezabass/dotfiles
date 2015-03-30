" Syntax Highlight
syntax enable

" 4 spaces for indenting
set shiftwidth=4

" 4 stops
set tabstop=4

" Spaces instead of tabs
"set expandtab

" Always  set auto indenting on
set autoindent

" select when using the mouse
set selectmode=mouse

" enable mouse scroll
:set mouse=a

" Line Numbers
set nu

" http://stackoverflow.com/questions/526858/how-do-i-make-vim-do-normal-bash-like-tab-completion-for-file-names
set wildmode=longest,list,full
set wildmenu

" Mouse scroll/select
" set mouse=a

" Blocket Platform
au BufNewFile,BufRead bconf.txt.* set filetype=cfg
au BufNewFile,BufRead *.tmpl set filetype=html
au BufNewFile,BufRead *.pgsql set filetype=sql

" opens search results in a window w/ links and highlight the matches
command! -nargs=+ Grep execute 'silent grep! -I -r -n --exclude *.{json,pyc} . -e <args>' | copen | execute 'silent /<args>'
" shift-control-* Greps for the word under the cursor
:nmap <leader>g :Grep <c-r>=expand("<cword>")<cr><cr>

" open vsplit on right
set splitright
