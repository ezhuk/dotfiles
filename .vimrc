" .vimrc
"

set nocompatible                        " use vim settings

set backspace=indent,eol,start          " backspace over everything
set history=100                         " keep longer history
set mouse=a                             " enable mouse for all modes

set incsearch                           " enable incremental search
set ignorecase                          " case insensitive
set smartcase                           " unless the search pattern contains upper case chars

set ruler                               " show the cursor position all the time
set visualbell                          " disable sounds
set nowrap                              " do not wrap lines
set showcmd                             " show incomplete commands
set nostartofline                       " do not reset the cursor to the start of line

set smarttab                            " smarter tabs
set softtabstop=4                       " use two spaces by default
set shiftwidth=4                        " use two spaces by default
set tabstop=8                           " use two spaces by default
set expandtab                           " replace <tab> with spaces

if &t_Co > 2 || has("gui_running")
  syntax on                             " enable syntax highlighting
  set hlsearch                          " highlight searches
endif

set list listchars=trail:.,tab:>.       " highlight trailing whitespaces
highlight SpecialKey ctermfg=DarkGray ctermbg=Black

if has("autocmd")
  filetype plugin on                    " enable file type detection
  autocmd BufReadPost *                 " jump to the last known position
      \ if line("'\"") > 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

  autocmd BufNewFile,BufRead *.go setlocal ft=go

  au FileType * setlocal fo-=r          " do not auto insert the current comment leader
  au FileType make setlocal ts=8 sts=4 sw=4 noexpandtab
  au FileType cpp setlocal ts=8 sts=4 sw=4
  au FileType python setlocal ts=8 sts=4 sw=4
  au FileType go setlocal ts=8 sts=4 sw=4 noexpandtab
else
  set autoindent                        " enable autoindent
  set smartindent                       " enable smart autoindenting
endif


