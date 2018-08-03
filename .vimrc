" essentials
set nocompatible
set history=50
syntax on
filetype plugin indent on
set hidden

" saving
set nobackup
set nowritebackup
set noswapfile
set autowrite     " Automatically :write before running commands

" ui 
set ruler         " show the cursor position all the time
set laststatus=2  " Always display the status line
set number
set numberwidth=2
set textwidth=80
set colorcolumn=+1
set showcmd       " display incomplete commands
set incsearch     " do incremental searching

" whitespace
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set backspace=2   " Backspace deletes like most programs in insert mode

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

" disable arrow keys for actual learning
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Autocomplete with dictionary words when spell check is on
set complete+=kspell

" Always use vertical diffs
set diffopt+=vertical

syntax enable
set termguicolors
colorscheme monokai_pro
"colorscheme oxeded
"colorscheme solarized
"colorscheme codeschool
