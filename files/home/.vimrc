set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugins
Plugin 'bling/vim-airline'      " fancy status bar
Plugin 'fatih/vim-go'           " Go plugin
Plugin 'majutsushi/tagbar'      " dynamic ctags outline view
Plugin 'tpope/vim-fugitive'     " Git plugin
Plugin 'Shougo/neocomplete.vim' " omni complete
Plugin 'scrooloose/nerdtree'    " file explorer
Plugin 'ctrlpvim/ctrlp.vim'     " jumper

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" :set all " displays all options
set autoindent                 " always set autoindenting on (> <)
set shiftwidth=2               " size of an indent
set tabstop=2                  " size of a hard tabstop
set showmatch                  " show matching brackets
set incsearch                  " do incremental searching
syntax on                      " switch syntax highlighting on
colorscheme default            " set colorscheme
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set encoding=utf-8             " enforce unicode
set history=371                " keep * lines of command line history
set hlsearch                   " highlight search results
set laststatus=2               " always show the status line
set relativenumber             " show line number
set showcmd                    " display incomplete commands
set t_Co=256                   " enable 256 colors mode
set ttimeoutlen=50             " set insert mode timeout

" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" <TAB> completion movement
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ neocomplete#start_manual_complete()
function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

" neocomplete
set completeopt=menuone " always show popup
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_ignore_case = 1
let g:neocomplete#enable_auto_select = 1
let g:echodoc_enable_at_startup = 1

" airline
set noshowmode                 " use airlines nice mode indicator instead
set noruler                    " use airline info instead
let g:airline#extensions#tabline#enabled = 1 " always show tabline
let g:airline_powerline_fonts = 1 " load airline font glyphs