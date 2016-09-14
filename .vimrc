":highlight turns on syntax highlighting
" ctermbg is background color
" ctermfg is foreground color
":highlight Normal ctermbg=black ctermfg=grey

"set syntax based on file extension
autocmd BufNewFile,BufReadPost *.lhm set filetype=lisp.lisp
autocmd BufNewFile,BufReadPost *.cpp set filetype=cpp.cpp


"to enable 256 colors
"set t_Co=256

"turn on syntax highlighting
syntax enable
"set background=dark

"set number gives you permanent numbers down the left side of your editor
" this is nice to have so you can jump lines with ease.
set number

"set autoindent gives your code indentation that you would normally see 
" in some IDE's. Again, this is nice to have as it keeps your code clean.
set autoindent

"set wildmenu gives you autocompletion of options. You can scroll through
" with Tab. 
set wildmenu

"specific to file type indentation"
filetype plugin indent on

"specific to masm, nasm, tasm assembly syntax highlighting"
"set: ft=nasm or set:ft=masm"

"set spell slpelllang gives you the ability to spell check your comments.
" This does not highlight code syntax errors. It even highlights words
" different colors based on what the error is. For example, spelling, punctuation, etc..
"set spell spelllang=en_us
