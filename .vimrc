autocmd! bufwritepost .vimrc source %
syntax enable 
set foldmethod=indent 
set foldlevel=99
set nu
set mouse=a " Mouse Integration
set cursorline " Highlight current line
set t_Co=256 " makes Vim use 256 colors
set background=dark
set showmatch
set hlsearch
set nocp
set pastetoggle=<F6>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <space> za
noremap <F2> :bn<CR> 
noremap <F3> :bp<CR>
map <F12> :bw!<CR>

" PLUGINS
" Vim-Plug
call plug#begin('~/.vim/plugged')
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'
Plug 'morhetz/gruvbox'
call plug#end()
colorscheme gruvbox

"  SimplyFold plugin settings 

" IndentLine plugin settings
let g:indentLine_char = '|'

" Pymode plugin settings

" Vim-Airline plugin settings
let g:airline_theme='wombat'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#clock#format = '%y/%m/%d %H:%M'
let g:airline_powerline_fonts =1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'


" NERDTree plugin setting
let NERDTreeStatusline="--------------------------------"
let NERDTreeShowHidden=1
map <F9> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMapOpenInTab='<c-t>'
