set nocp

" Include pathogen
call pathogen#infect()
call pathogen#helptags()

" Auto NERDTree on startup
"autocmd vimenter * NERDTree

syntax on
set fileencodings=utf-8
set encoding=utf-8
set tenc=utf-8
set nocompatible
set ruler
set cindent
set incsearch
set fileencoding=utf-8
set hls
set sw=4
set ru

" Whitespace stuff
set tabstop=4
set shiftwidth=4
set softtabstop=4
"set list listchars=tab:▸\ ,eol:¬,trail:·
set noeol
set autoindent

" Window settings
set wrap
set lbr
set textwidth=0
set cursorline

" Status bar
set laststatus=2
set statusline=%t\ %y\ format:\ %{&ff};\ [%l,%c]

" Fancy Powerlines
let g:Powerline_symbols = 'fancy'

au BufRead,BufNewFile *.ros     set filetype=php
au BufRead,BufNewFile *.tt2     set filetype=tt2
au BufRead,BufNewFile *.thtml   set filetype=php
au BufRead,BufNewFile *.ctp     set filetype=php

" Default color scheme
" set guifont=Bitstream\ Vera\ Sans\ Mono:h12
highlight Comment ctermfg=darkcyan
highlight Search term=reverse ctermbg=4 ctermfg=7
"let g:solarized_visibility='medium'
"let g:solarized_contrast='normal'
"set background=dark
"colorscheme solarized

" Swap files. Generally things are in version control
" don't use backupfiles either.
set noswapfile
set nobackup
set nowritebackup

" Persistent undos
set undodir=~/.vim/backup
set undofile

" {{{ Filetypes
"
" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" make uses real tabs
au FileType make setl noexpandtab

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby

" Map .twig files as jinja templates
au BufRead,BufNewFile *.{twig}  set ft=htmljinja

" Map *.coffee to coffee type
au BufRead,BufNewFile *.coffee  set ft=coffee

" Highlight JSON like Javascript
au BufNewFile,BufRead *.json set ft=javascript

" make python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python setl softtabstop=4 shiftwidth=4 tabstop=4 textwidth=90 expandtab
au FileType rst setl textwidth=80

" Make ruby use 2 spaces for indentation.
au FileType ruby setl softtabstop=2 tabstop=2 expandtab

" PHP settings
au FileType php setl textwidth=120 softtabstop=4 shiftwidth=4 tabstop=4 noexpandtab

" Javascript settings
au FileType javascript setl textwidth=120 softtabstop=4 shiftwidth=4 tabstop=4 noexpandtab

" Coffeescript uses 2 spaces too.
au FileType coffee setl softtabstop=2 shiftwidth=2 tabstop=2 expandtab

" }}}
