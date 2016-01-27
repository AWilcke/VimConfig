set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'               "Plugin manager
Plugin 'altercation/vim-colors-solarized'   "All the pretty colours
Plugin 'Valloric/YouCompleteMe'             "Code completion
Plugin 'scrooloose/syntastic'               "Syntax checker
Plugin 'scrooloose/NERDTree'                "File explorer
Plugin 'bling/vim-airline'                  "Pretty status bar
Plugin 'tpope/vim-fugitive'                 "Git integration
Plugin 'eagletmt/neco-ghc'                  "Haskell completion
Plugin 'lukerandall/haskellmode-vim'        "Yay Haskell

call vundle#end()            " required
filetype plugin indent on    " required

"Solarized
syntax on
let g:solarized_termcolors=256
set t_Co=16
set background=dark
colorscheme solarized

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_loc_list_height = 5
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = { "type": "style" }

"Checker config
let g:syntastic_python_checkers = ['flake8']

"NERDTree config
map <C-t> :NERDTreeToggle<CR> 

"Neco-GHC config
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
let g:ycm_semantic_triggers = {'haskell' : ['.']}

"HaskellMode config
filetype plugin on
au BufEnter *.hs compiler ghc
:let g:haddock_browser="/usr/bin/google-chrome"

"Vim config
set number
set expandtab
set tabstop=4
set virtualedit=onemore











