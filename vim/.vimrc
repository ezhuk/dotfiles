" Copyright (c) 2013 Eugene Zhuk.
" Use of this source code is governed by the MIT license that can be found
" in the LICENSE file.

set nocompatible                        " use vim settings

set encoding=utf-8                      " set the character encoding to utf-8
set backspace=indent,eol,start          " backspace over everything
set history=1000                        " keep longer history
set mouse=a                             " enable mouse for all modes
set ttyfast                             " fast terminal connection

set nobackup                            " do not backup
set noswapfile                          " do not use swap files
set nowb                                " do not write backup

set backupdir=~/.vim/backup             " backup files
set directory=~/.vim/swap               " swap files go here
set undodir=~/.vim/undo                 " undo files go there

set incsearch                           " enable incremental search
set ignorecase                          " case insensitive
set smartcase                           " unless the search pattern contains upper case chars

set ruler                               " show the cursor position all the time
set visualbell                          " disable sounds
set nowrap                              " do not wrap lines
set showcmd                             " show incomplete commands
set nostartofline                       " do not reset the cursor to the start of line

set smarttab                            " smarter tabs
set softtabstop=4                       " use four spaces by default
set shiftwidth=4                        " use four spaces by default
set tabstop=8                           " use eight spaces by default
set expandtab                           " replace <tab> with spaces

set binary                              " binary mode
set noeol                               " do not add EOL to the last line

syntax on                               " enable syntax highlighting

set list listchars=trail:.,tab:>.       " highlight trailing whitespaces
highlight SpecialKey ctermfg=DarkGray ctermbg=Black

if has("autocmd")
  filetype plugin on                    " enable file type detection
  autocmd BufReadPost *                 " jump to the last known position
      \ if line("'\"") > 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

  au BufNewFile,BufRead *.go setlocal ft=go
  au BufNewFile,BufRead *.md setlocal ft=markdown
  au BufNewFile,BufRead [Mm]akefile* setlocal ft=make

  au FileType * setlocal fo-=r          " do not auto insert the current comment leader
  au FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  au FileType cpp setlocal ts=8 sts=4 sw=4
  au FileType python setlocal ts=8 sts=4 sw=4
  au FileType go setlocal ts=8 sts=4 sw=4 noexpandtab
else
  set autoindent                        " enable autoindent
  set smartindent                       " enable smart autoindenting
endif
