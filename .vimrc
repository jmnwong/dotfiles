syntax enable
set ts=4
set number
set showcmd		" show command in bottom bar
set cursorline		" highlight current line
filetype indent on	" load filetype-specific indent files
set wildmenu		" visual autocomplete for command menu
set lazyredraw		" redraw only when we need to
set showmatch		" highlight matching [{()}]

" Search related
set incsearch		" search as characters are entered
set hlsearch		" highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

let mapleader=","	" leader is comma

set visualbell		" don't beep
set noerrorbells	" don't beep
set tags=tags
