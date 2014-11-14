" Press Ctrl-Tab to switch between open tabs (like browser tabs) to 
" the right side. Ctrl-Shift-Tab goes the other way.
" map <C-Tab> :tabnext<CR>
" map <C-S-Tab> :tabprev<CR>




" #turn on ctags
set tags=~/bin/tags
" #paste on
" set paste
"enforce 80 character limit"
if version >= 720
  :set colorcolumn=81
endif

set clipboard=unnamed

" set 256 colors
set t_Co=256

color muon

" Adding pathogen
call pathogen#infect()

" Attempt to determine the type of a file based on its name and possibly its
" contents.  Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on

" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Set the command window height to 2 lines, to avoid many cases of having to
" press <Enter> to continue"
set cmdheight=2

set encoding=utf-8
set expandtab

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" This stops Vim from redrawing the screen during complex operations and results
" in much smoother looking plugins.
set lazyredraw

" Always display the status line, even if only one window is displayed
set laststatus=2

" display unprintable characters
set list

" Enable use of the mouse for all modes - helpful for resizing buffers
set mouse=a

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" show line numbers by default
set number
"set relativenumber

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Add git branch to statusline
set statusline=%F\ %m\ %{fugitive#statusline()}\ %y%=%l,%c\ %P

" INDENTATION OPTIONS
" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set softtabstop=2 " insert mode tab and backspace use 2 spaces
set shiftwidth=2 " normal mode indentation commands use 2 spaces

set showtabline=2 " always show tab bar

" enables bash aliases from vim shell
set shell=bash
" this allows you to use bash aliases from the vim shell
" sadly, it breaks fugitive's git patch which is really nice
" set shellcmdflag=-ic

" Show partial commands in the last line of the screen
set showcmd

" case-sensitive search if any caps
set smartcase

" spell check comments
set spell

" if opening a file from :ls, :buffers, :files, etc. jump to open version
" of the file, if one exists
set switchbuf=useopen

" And reset the terminal code for the visual bell.  If visualbell is set, and
" this line is also included, vim will neither flash nor beep.  If visualbell
" is unset, this does nothing.
set t_vb=

" Allow an unusually high tab limit - helpful for ':tab ball' with a huge
" buffer list
set tabpagemax=200

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Better command-line completion
set wildmenu
set wildmode=longest,list,full

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =



" no more pesky escape (for insert and visual mode)
imap kj <Esc>
imap kJ <Esc>
imap Kj <Esc>
imap KJ <Esc>

nmap <leader><space> :call whitespace#strip_trailing()<CR>

set autoread " reload files they change on disk (e.g., git checkout)

" highlight whitespace symbols
hi NonText ctermfg=240 guifg=#666666


" hardmode always
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>


" green/red diffs
highlight diffAdded guifg=#00bf00
highlight diffRemoved guifg=#bf0000

" annoying 80 character highlighting
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/


" Current line customization
" high light current line in insert mode
" Enable CursorLine
set cursorline
autocmd InsertEnter * highlight  CursorLine ctermbg=236 ctermfg=None
autocmd InsertLeave * highlight  CursorLine ctermbg=235 ctermfg=None

if (&tildeop)
  nmap gcw guw~l
  nmap gcW guW~l
  nmap gciw guiw~l
  nmap gciW guiW~l
  nmap gcis guis~l
  nmap gc$ gu$~l
  nmap gcgc guu~l
  nmap gcc guu~l
  vmap gc gu~l
else
  nmap gcw guw~h
  nmap gcW guW~h
  nmap gciw guiw~h
  nmap gciW guiW~h
  nmap gcis guis~h
  nmap gc$ gu$~h
  nmap gcgc guu~h
  nmap gcc guu~h
  vmap gc gu~h
endif
