execute pathogen#infect()
"**********syntax*********************
"*************************************
syntax enable "enable sytax processing

"**********NERDTree******************
"*************************************
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"********spaces and tabs*************
"************************************
set tabstop=4  "number of visual spaces per TAB
set softtabstop=4 "number of spaces in tab when editing
set expandtab "tabs are spaces


"*******UI config********************
"************************************
set number "show line numbers
set showcmd "show command in bottom bar
set cursorline "highlight current line
filetype indent on "load filetype-specific indent files
set wildmenu "visual autocomplete for command menu
set lazyredraw "redraw only when we need to
set showmatch "highlight matching brackets 


"**********searching*****************
"************************************
set incsearch "search as characters are entered
set hlsearch "highlight matches
nnoremap <leader><space> :nohlsearch<CR> "turns of highlighted words with spacebar


"*************folding****************
"************************************
set foldenable "enable folding
set foldlevelstart=10 "open most folds by default
set foldnestmax=10 "10 nested fold max
nnoremap <space> za "space open/close folds
set foldmethod=indent "fold based on indent level


"************movement****************
"************************************
"move vertically
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
"highlight last inserted text
nnoremap gV `[v`] 


"********leader shortcuts************
"************************************
"leader is comma
let mapleader=',' 
"toggle gundo
nnoremap <leader>u :GundoToggle<CR>
"save current session windows
nnoremap <leader>s :mksession<CR> 
" vim -S to repopen saved session


"*********tmux***********************
"************************************
if exists('$TMUX')
	let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
	let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
	let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif


"**************autogroups***********
"***********************************
augroup configgroup
	autocmd!
	autocmd VimEnter * highlight clear SignColumn
	"autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.m :call <SID>StripTrailingWhitespaces()
	autocmd FileType java setlocal noexpandtab
	autocmd FileType java setlocal list
	autocmd FileType java setlocal listchars=tab:+\ ,eol:-
	autocmd FileType java setlocal formatprg=par\ -w80\ -T4
	autocmd FileType php setlocal expandtab
	autocmd FileType php setlocal list
	autocmd FileType php setlocal listchars=tab:+\ ,eol:-
	autocmd FileType php setlocal formatprg=par\ -w80\ -T4
	autocmd FileType ruby setlocal tabstop=2
	autocmd FileType ruby setlocal shiftwidth=2
	autocmd FileType ruby setlocal softtabstop=2
	autocmd FileType ruby setlocal commentstring=#\ %s
	autocmd FileType python setlocal commentstring=#\ %s
	autocmd BufEnter *.cls setlocal filetype=java
	autocmd BufEnter *.zsh-theme setlocal filetype=zsh
	autocmd BufEnter Makefile setlocal noexpandtab
	autocmd BufEnter *.sh setlocal tabstop=2
	autocmd BufEnter *.sh setlocal shiftwidth=2
	autocmd BufEnter *.sh setlocal softtabstop=2
    autocmd BufEnter *.lhm set filetype=lisp
    autocmd BufEnter *.cpp set filetype=cpp
augroup END



"*************backups**************
"**********************************
set backup "this moves backups to tmp folder
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup


"**********custom functions*********
"***********************************
" toggle between number and relativenumber
function! ToggleNumber()
	if(&relativenumber == 1)
		set norelativenumber
		set number
	else
		set relativenumber
	endif
endfunc

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
	" save last search & cursor position
	let _s=@/
	let l = line(".")
	let c = col(".")
	%s/\s\+$//e
	let @/=_s
	call
	cursor(l, c)
endfunction








