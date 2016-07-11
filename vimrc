"" Generic settings
set nocompatible
set number
set encoding=utf-8
set showcmd
set cursorline
set cursorcolumn
set wildmenu
set lazyredraw

" Required by Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'git://github.com/jiangmiao/auto-pairs.git'
Plugin 'Yggdroot/indentLine'
Plugin 'airblade/vim-gitgutter'
Bundle 'tomasr/molokai'
Bundle 'git@github.com:ctrlpvim/ctrlp.vim.git'
Plugin 'dkprice/vim-easygrep'
Bundle 'scrooloose/nerdtree'
Bundle 'geoffharcourt/vim-matchit'
Bundle 'tpope/vim-endwise'
Bundle 'git@github.com:vimtaku/hl_matchit.vim.git'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
colorscheme molokai

" Now we can turn our filetype functionality back on
filetype plugin indent on

" Tabs and indentation
set expandtab
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start  " backspace through everything in insert mode

" Editing vimrc
nnoremap <leader>ev :tabnew $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Helps when starting out
nnoremap <leader>mv :map<CR>


" NERDTree
map <silent> <C-n> :NERDTreeToggle<CR>
 
"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g c'
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }

"" Tab navigation in Macvim
if has("gui_macvim")
  " Press Ctrl-Tab to switch between open tabs (like browser tabs) to 
  " the right side. Ctrl-Shift-Tab goes the other way.
  noremap <C-Tab> :tabnext<CR>
  noremap <C-S-Tab> :tabprev<CR>

  " Switch to specific tab numbers with Command-number
  noremap <D-1> :tabn 1<CR>
  noremap <D-2> :tabn 2<CR>
  noremap <D-3> :tabn 3<CR>
  noremap <D-4> :tabn 4<CR>
  noremap <D-5> :tabn 5<CR>
  noremap <D-6> :tabn 6<CR>
  noremap <D-7> :tabn 7<CR>
  noremap <D-8> :tabn 8<CR>
  noremap <D-9> :tabn 9<CR>
  " Command-0 goes to the last tab
  noremap <D-0> :tablast<CR>
endif

"" Avoid clutter
set backupdir=~/.vim/backup_files//
set directory=~/.vim/swap_files//
set undodir=~/.vim/undo_files//

"" Remap ESC
:imap ii <Esc>

"" Open search results in new tab
set switchbuf+=usetab,newtab

"" Airline settings
let g:airline_theme = 'molokai'
let g:airline_powerline_fonts = 1
set guifont=Source\ Code\ Pro\ for\ Powerline

set ttimeoutlen=50
set laststatus=2
