"   Ivan Toftul init.vim file

" PLUGINS
call plug#begin()
Plug 'junegunn/goyo.vim'
Plug 'morhetz/gruvbox'
Plug 'freitass/todo.txt-vim'
call plug#end()

" PLUGINS SETTINGS
filetype plugin on

" color scheme
colorscheme gruvbox

" git gutter
" let g:gitgutter_highlight_lines = 1
let g:gitgutter_highlight_linenrs = 1


" UI SETTINGS
set laststatus=2            " Always show status line
set number relativenumber   " turn hybrid line numbers on
set numberwidth=5           " width of numbers line (default on gvim is 4)
set report=0                " Show all changes.
set showmode                " Show the current mode.
set showcmd                 " show partial command on last line of screen.
set splitbelow splitright   " how to split new windows.
set title                   " Show the filename in the window title bar.

set scrolloff=8             " Start scrolling n lines before horizontal
                            "   border of window.
set sidescrolloff=7         " Start scrolling n chars before end of screen.
set sidescroll=5            " The minimal number of columns to scroll
                            "   horizontally.

" to work with long lines of text
set wrap 
set linebreak
set textwidth=0
set showbreak=...

" moving along long text
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')


" --- diff ---
set diffopt=filler          " Add vertical spaces to keep right
                            "   and left aligned.
set diffopt+=iwhite         " Ignore whitespace changes.


" --- list chars ---
" list spaces and tabs to avoid trailing spaces and mixed indentation
" see key mapping at the end of file to toggle `list`
set listchars=tab:▹\ ,trail:·,nbsp:⚋
set fillchars=fold:-
set list

" Mouse events
set mouse=a

" --- remove sounds effects ---
set noerrorbells
set visualbell

" Disable swp files
set noswapfile

" search improvements
set hlsearch    " highlight search results
set incsearch   " focuses on the found text

" zen mode
map <leader>f :Goyo <CR>

" copy to the clipboard
noremap <Leader>y "+y
noremap <Leader>p "+p
" for neovim only
"set clipboard+=unnamedplus


" clear highlight
nnoremap <Leader>h :noh<CR>
