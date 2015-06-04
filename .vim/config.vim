syntax on
set background=light
colorscheme solarized
set t_Co=256

set backupdir=~/.vim/.backup
set directory=~/.vim/.tmp
set spellfile=~/.vim/spell/custom.en.utf-8.add
" Persistent Undo
if has('persistent_undo')
  set undofile
  set undodir=~/.vim/.undo
endif

set diffopt=filler
set diffopt+=iwhite

set lispwords+=defroutes " Compojure
set lispwords+=defpartial,defpage " Noir core
set lispwords+=defaction,deffilter,defview,defsection " Ciste core
set lispwords+=describe,it " Speclj TDD/BDD
set nu " Enable line numbers.
set ofu=syntaxcomplete#Complete " Set omni-completion method.
set report=0 " Show all changes.

set shell=/bin/sh

set ttyfast " Send more characters at a given time.
set undofile " Persistent Undo.

" Save and restore folds
" :au BufWinLeave * mkview
" :au BufWinEnter * silent loadview

" Join lines and restore cursor location (J)
nnoremap J mjJ`j

" Toggle folds (<Space>)
nnoremap <silent> <space> :exe 'silent! normal! '.((foldclosed('.')>0)? 'zMzx' : 'zc')<CR>

" ---------------
" UI
" ---------------
set ruler " Ruler on
set number " Line numbers on
set nowrap " Line wrapping off
set laststatus=2 " Always show the statusline
set cmdheight=2 " Make the command area two lines high
set encoding=utf-8
set noshowmode " Don't show the mode since Powerline shows it
set title " Set the title of the window in the terminal to the file
" Disable tooltips for hovering keywords in Vim
if exists('+colorcolumn')
  set colorcolumn=80
endif

if exists('+ballooneval')
" This doesn't seem to stop tooltips for Ruby files
  set noballooneval
" 100 second delay seems to be the only way to disable the tooltips
  set balloondelay=100000
endif
set splitbelow
set splitright
set showtabline=2


" ---------------
" Behaviors
" ---------------
syntax enable
set backup " Turn on backups
set autoread " Automatically reload changes if detected
set wildmenu " Turn on WiLd menu
set hidden " Change buffer - without saving
set history=1000 " Number of things to remember in history.
set cf " Enable error files & error jumping.
set clipboard+=unnamed " Yanks go on clipboard instead.
set autowrite " Writes on make/shell commands
set timeoutlen=450 " Time to wait for a command (after leader for example).
set nofoldenable
set foldlevel=99
" set foldcolumn=4
" set foldmethod=syntax
" set foldminlines=2
" set foldnestmax=3
set formatoptions=crqnl1
set iskeyword+=\$,- " Add extra characters that are valid parts of variables
set nostartofline " Don't go to the start of the line after some commands
set scrolloff=3 " Keep three lines below the last line when scrolling
set gdefault " this makes search/replace global by default
set switchbuf=useopen " Switch to an existing buffer if one exists

" ---------------
" Text Format
" ---------------
set tabstop=2
set backspace=indent,eol,start " Delete everything with backspace
set shiftwidth=2 " Tabs under smart indent
set cindent
set autoindent
set smarttab
set nojoinspaces
set softtabstop=4

" ---------------
" Searching
" ---------------
set ignorecase " Case insensitive search
set smartcase " Non-case sensitive search
set incsearch " Incremental search
set hlsearch " Highlight search results
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
  \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc,*/node_modules/*,
  \rake-pipeline-*

" ---------------
" Visual
" ---------------
set showmatch " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink
" Show invisible characters

" Show trailing spaces as dots and carrots for extended lines.
" From Janus, http://git.io/PLbAlw

" Reset the listchars
set listchars=""
" show trailing spaces as dots
set listchars+=trail:.
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=extends:>
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=precedes:<

" ---------------
" Sounds
" ---------------
set noerrorbells
set novisualbell

" ---------------
" Mouse
" ---------------
set mousehide " Hide mouse after chars typed
set mouse=a " Mouse in all modes

" Better complete options to speed it up
set complete=.,w,b,u,U

