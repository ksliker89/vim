"This is a simple .vimrc file. There are a lot of samples on the web but you shouldn't put anything
" in your .vimrc files without knowing exactly what it does.

":highlight turns on syntax highlighting
" ctermbg is background color
" ctermfg is foreground color
:highlight Normal ctermbg=white ctermfg=black 

"set number gives you permanent numbers down the left side of your editor
" this is nice to have so you can jump lines with ease.
set number

"set autoindent gives your code indentation that you would normally see 
" in some IDE's. Again, this is nice to have as it keeps your code clean.
set autoindent

"set wildmenu gives you autocompletion of options. You can scroll through
" with Tab. 
set wildmenu

"set spell slpelllang gives you the ability to spell check your comments.
" This does not highlight code syntax errors. It even highlights words
" different colors based on what the error is. For example, spelling, punctuation, etc..
set spell spelllang=en_us
