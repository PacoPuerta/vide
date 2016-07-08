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
" Map for global auto indentation
map <F10> mzgg=G`z

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
" Smart way to move between panes
"map <C-up> <C-w><up>
"map <C-down> <C-w><down>
"map <C-left> <C-w><left>
"map <C-right> <C-w><right>

" close current buffer
nnoremap <C-c> :bd <cr>

" bash-support
let g:BASH_InsertFileHeader = 'no'
let g:BASH_MapLeader  = ';'

" IndentLine
let g:indentLine_color_term = 239

" NerdTree
map <C-e> :NERDTreeToggle<CR>
nnoremap <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Buffergator
nnoremap <F3> :BuffergatorToggle<cr>
nnoremap <C-b> :BuffergatorMruCycleNext<cr>
let g:buffergator_viewport_split_policy = 'T'
let g:buffergator_hsplit_size = 7

" Tagbar
nnoremap <F4> :TagbarToggle<CR>
let Tagbar_Use_Right_Window = 1
let Tagbar_Exit_OnlyWindow = 1
let Tagbar_WinWidth = 40

" Undotree
nnoremap <F5> :UndotreeToggle<cr>
if has("persistent_undo")
    set undodir=/tmp/
    set undofile
    "set backup
    set undoreload=5000
endif
if !exists('g:undotree_WindowLayout')
    let g:undotree_WindowLayout = 4
endif

" Vim-trailing-whitespaces
nnoremap <F9> :FixWhitespace<cr>

" Vim-easymotion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" Syntatics
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
nnoremap <F6> :SyntasticToggleMode<CR>

" Airline
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
set ambiwidth=double
let g:bufferline_echo = 0
