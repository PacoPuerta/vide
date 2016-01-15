" Default settings
execute pathogen#infect()
syntax on
filetype plugin indent on
set t_Co=256
set fileformats=unix,dos
set ruler
set number
highlight LineNr ctermfg=grey
set nocompatible
set background=dark

" Set mapleader
let mapleader = ","
let g:mapleader = ","
set showcmd

" Auto read when a file is changed from the outside.
set autoread

" Tab key produces 4 spaces, and tab characters are converted to spaces.
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
map <F7> mzgg=G`z

" When you start searching text with /, search is performed at every
" new character insertion.
set incsearch
set hlsearch

" Styles.
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1

" Yellow as selected whatever colour.
highlight Search ctermbg=3 ctermfg=Black
highlight Visual ctermbg=3 ctermfg=Black
highlight VisualNOS ctermbg=3 ctermfg=Black


""""""""""""""""""""""""""""""""""""""""""
"""""" BUNDLES SETTINGS """"""""""""""""""
""""""""""""""""""""""""""""""""""""""""""
" Update all bundles:
" for i in ~/.vim/bundle/*; do git -C  pull; done

" bash-support
let g:BASH_InsertFileHeader = 'no'
let g:BASH_MapLeader  = ';'

" IndentLine
let g:indentLine_color_term = 239

" NerdTree
map <C-e> :NERDTreeToggle<CR>
nnoremap <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Taglist
"map <C-l> :TlistToggle<CR>
nnoremap <F4> :TlistToggle<CR>
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_WinWidth = 40

" Buffergator
nnoremap <F3> :BuffergatorToggle<cr>
let g:buffergator_viewport_split_policy = 'T'
let g:buffergator_hsplit_size = 7

" Undotree
nnoremap <F5> :UndotreeToggle<cr>
if has("persistent_undo")
    set undodir=/tmp/
    set undofile
    set backup
    set undoreload=5000
endif
if !exists('g:undotree_WindowLayout')
    let g:undotree_WindowLayout = 4
endif

" Syntatics
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Airline
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
set ambiwidth=double
let g:bufferline_echo = 0
