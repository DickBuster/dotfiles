syntax on
set number
set relativenumber
set ignorecase      " ignore case
set smartcase     " but don't ignore it, when search string contains uppercase letters
set nocompatible
set incsearch        " do incremental searching
set expandtab
set tabstop=4
set ruler
set smartindent
set shiftwidth=4
set hlsearch
"set virtualedit=all
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent
set mouse=a  " mouse support
filetype plugin on


source $HOME/.config/nvim/vim-plug/plugins.vim     
source $HOME/.config/nvim/vim-plug/coc.vim     


let mapleader=" "

nnoremap <SPACE> <Nop>
vnoremap  <leader>y  "+y
nnoremap  <leader>y  "+y
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

nnoremap <leader>S :%s//g<Left><Left>

nnoremap <expr> <Leader>s <SID>change_word_under_cursor()
fu! s:change_word_under_cursor() abort
    let word = expand('<cword>')
    let subwords = split(word, word =~# '_' ? '_' : '\ze\u')
    return ':%s/\v' . join(map(subwords, '"(" . v:val . ")"'), word =~# '_' ? '_' : '') . '//g' . "\<Left>\<Left>"
endfu

nnoremap <silent> <esc> :noh<cr><esc>

"NERDTree Setup
nmap <C-f> :NERDTreeToggle<CR>
