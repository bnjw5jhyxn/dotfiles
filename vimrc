set nocompatible
set backspace=indent,eol,start
set autoindent
set nobackup
set history=50
set ruler
set showcmd
set incsearch
syntax on
set hlsearch
filetype plugin indent on
set visualbell
nnoremap <C-L> :nohl<CR><C-L>

autocmd FileType text setlocal textwidth=78 softtabstop=8 expandtab

autocmd FileType html setlocal tabstop=4 shiftwidth=4

" ionic
"autocmd BufNewFile,BufRead *.ts setlocal filetype=javascript
"autocmd FileType javascript,html setlocal softtabstop=2 shiftwidth=2 expandtab
