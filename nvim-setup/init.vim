""" Plugins
" Manually install junegunn/vim-plug
call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy file search
Plug 'lakshayg/vim-redact-pass' " Avoid storing passwords in vim buffers

Plug 'tpope/vim-commentary' " Quick comment/uncomment
nmap // gcc
xmap // gc

Plug 'ludovicchabant/vim-gutentags'
let g:gutentags_enabled = executable('ctags')
let g:gutentags_add_default_project_roots = 0
let g:gutentags_project_root = ['tags']
let g:gutentags_generate_on_new = 0
let g:gutentags_generate_on_missing = 0
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 1
let g:gutentags_project_info = [{'type': 'bazel', 'file': 'WORKSPACE'}]
let g:gutentags_file_list_command = 'ls-files'
let g:gutentags_ctags_executable_bazel = 'ctags-cpp'
command! -nargs=0 GutentagsInit :call system("ctags -L /dev/null") " create an empty tags file to initialize gutentags

call plug#end()

""" General options
syntax enable               " enable syntax processing
filetype plugin indent on   " load filetype-specific indent files

set title           " Set window title based on active buffer
set showmatch       " highlight matching parentheses
set nowrap          " no text wrapping by default, "set wrap" to enable
set linebreak       " Don't break in middle of a word when wrapping is enabled
set scrolloff=0     " No vertical scroll offset
set sidescroll=1    " Enable horizontal scrolling
set sidescrolloff=5 " The minimal number of columns to scroll horizontally
set ttyfast         " Fast terminal connection. No redrawing.
set nofsync         " No flushing to disk after the file is closed
set updatetime=750  " Refresh time for plugins like vim-signify and tagbar
set lazyredraw      " redraw only when we need to (for faster macros)
set autoread        " Re-read a file if it has been changed outside nvim
set virtualedit=block " Allow placing cursor in places with no text in visual block mode
set mouse=a         " enable mouse support for normal, visual, insert and cmdline modes
set splitbelow      " New window below the current one
set splitright      " New window on the right of the current one
set history=10000
set report=0        " Always report the number of lines changed
set noequalalways   " Don't resize splits automatically
set cmdheight=1     " Number of screen lines to use for the command line
set noshowcmd       " No need to display partial commands
set tagcase=match   " Match tag case when searching, this enable binary search
set laststatus=2    " Always show statusline in vim
set shortmess=ilmrxoOtTWF "Shorten/Silence some messages
set nrformats=bin,hex " What bases vim understands when adding/subtracting numbers
set backspace=indent,eol,start "Allow backspace to operate freely across regions
set belloff=all     " Disable bell for all events
set shada=!,'500,<50,s10,h " Store nvim history/registers etc. between sessions

""" Indentation
set shiftwidth=2    " number of spaces to use for autoindent
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " automatically expand tabs to spaces
set smarttab        " <Tab> at line start inserts `shiftwidth` no of blanks
set autoindent     " Copy indent from current line to new line

""" File and directory listing
set wildmenu        " Command completion support
set wildmode=full   " Complete the next full match

set wildignore+=.git/ " wildignore files are not used in tab completion
set wildignore+=.DS_Store
set wildignore+=._.DS_Store
set wildignore+=__pycache__/
set wildignore+=**/__pycache__/**
set wildignore+=bazel-out/
set wildignore+=bazel-testlogs/

set suffixes-=.h      " suffixes are de-prioritized when selecting with wildmenu
set suffixes+=.DS_Store
set suffixes+=._.DS_Store

""" Appearance
set list listchars=tab:»-,trail:·,nbsp:×,extends:❯,precedes:❮  " Highlight undesirable characters in code
set fillchars+=vert:┃ " Use thin vertical split separator
set fillchars+=fold:\ 


""" Clipboard
set mouse= " Selection by mouse (hack!) until the clipboard over ssh works

""" Mappings

" Terminal escape
:tnoremap <Esc> <C-\><C-n>
