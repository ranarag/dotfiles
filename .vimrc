call pathogen#infect()
execute pathogen#infect('bundle/{}')
call pathogen#helptags()
set number
syntax on
set showcmd
set showmatch
set wildmenu
set incsearch
set hlsearch
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
let mapleader=","
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>a :Ag

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
" toggle between number and relativenumber
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

set splitbelow
set splitright
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>


" vim + tmux commands
let g:tmux_navigator_save_on_switch = 1

if has("autocmd")
  augroup templates
    autocmd BufNewFile *.py 0r ~/.vim/templates/skeleton.py | normal! 10G
    autocmd BufNewFile *.c 0r ~/.vim/templates/skeleton.c | normal! 10G
    autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp | normal! 16G
 augroup END
endif

