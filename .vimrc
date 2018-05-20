" .vimrc
" # https://dougblack.io/words/a-good-vimrc.html
" -- Don't put any lines in your vimrc that you don't understand.

" leader for mapping stuff
let mapleader=","

" enable syntax highlighting
syntax enable

" highlight matching [{()}]
set showmatch           

" Show comments in other color than default blue
:highlight Comment ctermfg=green

" set linenumbers
set number

" horizontal line for your curser
set cursorline

" on autocomplete for command menu, shows a graphical menu of matches
set wildmenu            

"Always dispaly the statusline (filename, current line, location in file)
set laststatus=2

" ---- searching ----

" highlight search
set hlsearch
" search as characters are entered
set incsearch
" Ignore case when searching
set ignorecase
" turn off search highligh? 
nnoremap <leader><space> :nohlsearch<CR>

" ---- indentation ----

" Don't use tabs for indentation. Spaces are nicer to work with.
set tabstop=4                 
set softtabstop=4     
set shiftwidth=4     
set expandtab         

" ---- misc ----"

"Allow for copied (yanked) stuff to end up in your clipboard
set clipboard=unnamed

" No annoying sounds on errors
set noerrorbells
set novisualbell

" folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
" space open/closes folds
nnoremap <space> za

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" ----- Perl ----

" http://www.perlmonks.org/?node_id=540167
" check perl code with :make
autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m
autocmd FileType perl set autowrite

" highlight perl pod correctly
let perl_include_pod = 1

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1

" Other examples .vimrc
" https://publius-ovidius.livejournal.com/242806.html
" https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim - this is very verbose, and excellent! 
